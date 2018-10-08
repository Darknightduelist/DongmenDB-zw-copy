//
// Created by Sam on 2018/2/13.
//

#include <parser/statement.h>

/**
 * 在现有实现基础上，实现update from子句
 *
 * 支持的update语法：
 *
 * UPDATE <table_name> SET <field1> = <expr1>[, <field2 = <expr2>, ..] WHERE <logical_expr>
 * update student set username='zw',id='12' where password='123'
 * 解析获得 sql_stmt_update 结构
 */

/*TODO: parse_sql_stmt_update， update语句解析*/
sql_stmt_update *parse_sql_stmt_update(ParserT *parser) {

    ///以update student set sage=20[,fieldname=expr] where sage=22
    char *tableName = NULL;//保存上面update语句的student
    arraylist *fields = arraylist_create();//set fields 被更新的字段列表。保存上面update语句的sage
    arraylist *fieldsExpr = arraylist_create();//set fields expression 新值(表达式)列表 。保存上面update语句的20
    Expression *where = NULL; //保存上面update语句的 sage = 22
    TokenT *token = parseNextToken(parser);  //首先判断当前解析器中的词是否为 NULL,如果是，就获取下一个 token;否则就返回当前词
    if(!matchToken(parser, TOKEN_RESERVED_WORD, "update")){//执行完后，此时token指针已经指向parse的下一个词
        strcpy(parser->parserMessage, "语法错误.");
        return NULL;
    }

    token = parseNextToken(parser);  //首先判断当前解析器中的词是否为 NULL,如果是，就获取下一个 token;否则就返回当前词
    if (token->type == TOKEN_WORD) {
        tableName = new_id_name(); //new_id_name是分配空间，tableName是保存表名
        strcpy(tableName, token->text);
    } else {
        strcpy(parser->parserMessage, "invalid sql: missing table name.");
        return NULL;
    }

    token = parseEatAndNextToken(parser);
    if(!matchToken(parser, TOKEN_RESERVED_WORD, "set")){//执行完后，此时token指针已经指向parse的下一个词
        strcpy(parser->parserMessage, "语法错误.");
        return NULL;
    }

    token = parseNextToken(parser);
    while (token != NULL && (token->type == TOKEN_WORD || token->type == TOKEN_COMMA)) {
        if (token->type == TOKEN_COMMA){//*以上是操作符，在表达式解析时使用*/ //逗号
            /*若是逗号，则需要跳过逗号*/
            token = parseEatAndNextToken(parser);
        }
        /*获取字段名*/
        if (token->type == TOKEN_WORD) {//非保留字的词
            char *fieldName = new_id_name();
            strcpy(fieldName, token->text);
            arraylist_add(fields, fieldName);
        } else {
            strcpy(parser->parserMessage, "invalid sql: missing table name.");
            return NULL;
        }
        token = parseEatAndNextToken(parser);
        /*字段名后面跟着等号*/
        if (!matchToken(parser, TOKEN_EQ, "=")) {
            strcpy(parser->parserMessage, "invalid sql: missing =.");
            return NULL;
        }
        /*等号后面是表达式*/
        Expression *expr0 = parseExpressionRD(parser);
        arraylist_add(fieldsExpr, expr0);
        token = parseNextToken(parser);
        if (token == NULL) {
            break;
        }
    }

    if (token !=NULL) {
        if (!matchToken(parser, TOKEN_RESERVED_WORD, "where")) {//sql中的保留字，比如create,set,where 等等
            strcpy(parser->parserMessage, "语法错误.");
            return NULL;
        }
        where = parseExpressionRD(parser);//已经申请了空间
        if (parser->parserStateType == PARSER_WRONG) {
            return NULL;
        }
    }
    sql_stmt_update *sqlStmtUpdate = (sql_stmt_update *) malloc(sizeof(sql_stmt_update));
    sqlStmtUpdate->tableName = tableName;
    sqlStmtUpdate->fields = fields;
    sqlStmtUpdate->fieldsExpr = fieldsExpr;
    //char *table_name, *alias;///alias的意思是‘别名’
    TableReference_t *ref =   TableReference_make(tableName, NULL);//TableReference_make(char *table_name, char *alias)
    SRA_t *table =  SRATable(ref);//保存需要更新的字段
    sqlStmtUpdate->where = table;
    if (where != NULL) {
        sqlStmtUpdate->where = SRASelect(table, where);//SRA_t *SRASelect(SRA_t *sra, Expression *cond)
    }
    return sqlStmtUpdate;
};