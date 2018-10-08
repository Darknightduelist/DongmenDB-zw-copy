//
// Created by Sam on 2018/2/13.
//



#include <dongmensql/sra.h>
#include <parser/parser.h>
#include <parser/expression.h>
#include <parser/statement.h>

/**
 * UPDATE <table_name> SET <field1> = <expr1>[, <field2 = <expr2>, ..]
 * WHERE <logical_expr>
 * update student set username='zw',id='12' where password='123'
 * select username,password from student where id='20'  //table_name相当于student
 * @brief 解析select语句
 * @param parser 解析器
 * @return select语句
 */
SRA_t *parse_sql_stmt_select(ParserT *parser) {///parserT中也有token这个属性
    TokenT *token = parseNextToken(parser);
    /*
     * 常用函数 对解析器中 token(词）的TokenType和text进行检查，
     * 如果匹配成功，就直接获取下一个词放入解析器中，
     * 否则输出错误信息，返回 NULL，不对解析器中的词修改
     * */
    if(!matchToken(parser, TOKEN_RESERVED_WORD, "select")){
        strcpy(parser->parserMessage, "语法错误.");
        return NULL;
    }
    arraylist *fieldsExpr = parseFieldsExpr(parser);///返回没有逗号的纯表达式列表
    if (parser->parserStateType == PARSER_WRONG) {/*语法分析状态类型*/
        return NULL;
    }
    token = parseNextToken(parser); //首先判断当前解析器中的词是否为 NULL,如果是，就获取下一个 token;否则就返回当前词
    if(!matchToken(parser, TOKEN_RESERVED_WORD, "from")){
        strcpy(parser->parserMessage, "语法错误.");
        return NULL;
    }

    ///（from） student的部分
    token = parseNextToken(parser);
    SRA_t *tablesExpr = parseTablesExpr(parser);//select username from student
    if (parser->parserStateType == PARSER_WRONG) {
        return NULL;
    }
    token = parseNextToken(parser);
    if (token == NULL || token->type == TOKEN_SEMICOLON) {//分号或者null
        SRA_t *project = SRAProject(tablesExpr, fieldsExpr);
        return project;
    }

    ///where ?可有可无
    token = parseNextToken(parser);
    if(!matchToken(parser, TOKEN_RESERVED_WORD, "where")){
        strcpy(parser->parserMessage, "语法错误.");
        return NULL;
    }

    ///where之后的条件id='10'
    token = parseNextToken(parser);
    Expression *whereExpr = parseExpressionRD(parser);///解析where后的表达式
    if (parser->parserStateType == PARSER_WRONG) {
        return NULL;
    }
    SRA_t *select = SRASelect(tablesExpr, whereExpr);
    SRA_t *project = SRAProject(select, fieldsExpr);
    token = parseNextToken(parser);///如果不为空，则返回当前的token
    if (token == NULL || token->type == TOKEN_SEMICOLON) {///分号或者null
        return project;///只要返回了一个值这个函数就结束
    }
    token = parseNextToken(parser);
    if(!matchToken(parser, TOKEN_RESERVED_WORD, "group")){
        strcpy(parser->parserMessage, "语法错误.");
        return NULL;
    }
    token = parseNextToken(parser);
    if(!matchToken(parser, TOKEN_RESERVED_WORD, "by")){
        strcpy(parser->parserMessage, "语法错误.");
        return NULL;
    }
    token = parseNextToken(parser);
    arraylist *groupExpr = parseFieldsExpr(parser);
    project->project.group_by = groupExpr;
    project->project.group_by = groupExpr;
    if (parser->parserStateType == PARSER_WRONG) {
        return NULL;
    }
    token = parseNextToken(parser);
    if (token == NULL) {
        return project;
    }
    token = parseNextToken(parser);
    if(!matchToken(parser, TOKEN_RESERVED_WORD, "order")){
        strcpy(parser->parserMessage, "语法错误.");
        return NULL;
    }
    token = parseNextToken(parser);
    if(!matchToken(parser, TOKEN_RESERVED_WORD, "by")){
        strcpy(parser->parserMessage, "语法错误.");
        return NULL;
    }
    token = parseNextToken(parser);
    arraylist *orderExpr = parseOrderExpr(parser);
    project->project.order_by = orderExpr;
    if (parser->parserStateType == PARSER_WRONG) {
        return NULL;
    }
    token = parseNextToken(parser);;
    if (token == NULL || token->type == TOKEN_SEMICOLON) {
        return project;///***
    } else {
        return NULL;
    }
};

/**
 * 解析select后面的表达式列表，以arraylist返回
 * @param parser 语法分析器
 * @return 没有逗号的纯表达式列表，类似 username password id  ......
 */
arraylist *parseFieldsExpr(ParserT *parser) {///select username，password，id.....
    arraylist *exprs = arraylist_create();//创建一个列表
    Expression *expr0 = parseExpressionRD(parser);///parseExpressionRD函数的作用根据使用情况来看就是将表达式列表分离
    arraylist_add(exprs, expr0);

    TokenT *token = parseNextToken(parser);//如果不空null，则返回当前token
    while (token != NULL && token->type == TOKEN_COMMA) {/*以上是操作符，在表达式解析时使用*/ //逗号
        parseEatAndNextToken(parser);//不管当前空不空，返回下一个token，也就是下一个关键词
        Expression *expr1 = parseExpressionRD(parser);
        arraylist_add(exprs, expr1);
        token = parseNextToken(parser);
    }

    return exprs;
};

SRA_t *parseTablesExpr(ParserT *parser) {
    TokenT *token = parseNextToken(parser);
    if (token->type == TOKEN_WORD) {

        char *tableName = strdup(token->text);
        TableReference_t *ref =   TableReference_make(tableName, NULL);
        SRA_t *table =  SRATable(ref);

        TokenT *token = parseEatAndNextToken(parser);
        while (token != NULL && token->type == TOKEN_COMMA) {
            token = parseEatAndNextToken(parser);/*跳过comma*/
            char *tableName = strdup(token->text);
            TableReference_t *ref1 =   TableReference_make(tableName, NULL);
            SRA_t *table1 =  SRATable(ref1);

            table = SRAJoin(table, table1, NULL);
            token = parseEatAndNextToken(parser);
        }

        return table;
    }

    return NULL;
};
