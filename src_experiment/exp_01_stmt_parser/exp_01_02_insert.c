//
// Created by Sam on 2018/2/13.
//
#include <parser/statement.h>
#include <parser/parser.h>
#include <utils/utils.h>

/**
 * 在现有实现的基础上，修改parser以支持insert values多条的特性。
 * insert into table(f1,f2,...,fn) values (v1,v2,...,vn),(v1,v2,...,vn),(v1,v2,...,vn)(v1,v2,...,vn);
 */

sql_stmt_insert *parse_sql_stmt_insert(ParserT *parser) {
    char *tableName = NULL;
    arraylist *fields = arraylist_create();  //保存输入的变量值的名称
    arraylist *values = arraylist_create();

    /*
     * 常用函数 对解析器中 token(词）的TokenType和text进行检查，
     * 如果匹配成功，就直接获取下一个词放入解析器中，
     * 否则输出错误信息，返回 NULL，不对解析器中的词修改
     * */
    if (!matchToken(parser, TOKEN_RESERVED_WORD, "insert")) {
        return NULL;
    }
    if (!matchToken(parser, TOKEN_RESERVED_WORD, "into")) {
        strcpy(parser->parserMessage, "invalid sql: should be into.");
        return NULL;
    }
    TokenT *token = parseNextToken(parser);  //首先判断当前解析器中的词是否为 NULL,如果是，就获取下一个 token;否则就返回当前词
    if (token->type == TOKEN_WORD) {
        tableName = new_id_name(); //new_id_name是分配空间，tableName是保存表名
        strcpy(tableName, token->text);
    } else {
        strcpy(parser->parserMessage, "invalid sql: missing table name.");
        return NULL;
    }
    token = parseEatAndNextToken(parser); //直接获取下一个词，不对当前解析器中的词进行判断
    if (!matchToken(parser, TOKEN_OPEN_PAREN, "(")) {//判断左括号是否缺失
        strcpy(parser->parserMessage, "invalid sql: missing (.");
        return NULL;
    }
    token = parseNextToken(parser);//首先判断当前解析器中的词是否为 NULL,如果是，就获取下一个 token;否则就返回当前词
    if (token->type == TOKEN_WORD) { //TOKEN_WORD非保留字的词
        while (token->type == TOKEN_WORD) {//右括号也算是保留字
            char *fieldName = new_id_name();
            strcpy(fieldName, token->text);
            arraylist_add(fields, fieldName);
            token = parseEatAndNextToken(parser);
            if (token->type==TOKEN_COMMA){//判断为逗号则直接获取下一个关键词，insert into table(f1,f2
                token = parseEatAndNextToken(parser);
            }else{
                break;
            }
        }
    } else {
        strcpy(parser->parserMessage, "invalid sql: missing field name.");
        return NULL;
    }
    if (!matchToken(parser, TOKEN_CLOSE_PAREN, ")")) {//缺失右括号的判断
        strcpy(parser->parserMessage, "invalid sql: missing ).");
        return NULL;
    }
    if (!matchToken(parser, TOKEN_RESERVED_WORD, "values")) { //insert into table(f1,f2,...,fn) values (v1,v2,...
        strcpy(parser->parserMessage, "invalid sql: missing values.");
        return NULL;
    }
    if (!matchToken(parser, TOKEN_OPEN_PAREN, "(")) { //判断values后的左括号
        strcpy(parser->parserMessage, "invalid sql: missing (.");
        return NULL;
    }
    token = parseNextToken(parser);//首先判断当前解析器中的词是否为 NULL,如果是，就获取下一个 token;否则就返回当前词
    if (token->type == TOKEN_STRING || token->type == TOKEN_DECIMAL) {//判断是否是字符串或者是数字
        while (token->type == TOKEN_STRING || token->type == TOKEN_DECIMAL) {
            if (token->type == TOKEN_STRING){//如果是字符串
                /*去掉引号*/
                int len = strlen(token->text) - 1;
                char *v = token->text + 1;
                char *value = (char *) calloc(len, 1);
                strcpy(value, v);
                value[len-1] = '\0';

                arraylist_add(values, value);
            } else{//如果是数字类型
                integer *i = (integer *)calloc(sizeof(integer *), 1);
                i->val = atoi(token->text);//atoi类型转换，将字符串类型转化为其它类型
                arraylist_add(values, i);
            }

            token = parseEatAndNextToken(parser);//直接获取下一个词，不对当前解析器中的词进行判断
            if (token->type==TOKEN_COMMA){//TOKEN_COMMA操作符
                token = parseEatAndNextToken(parser);
            }else{
                break;
            }
        }
    } else {//如果不是字符串或者是数字
        strcpy(parser->parserMessage, "invalid sql: missing a value.");
        return NULL;
    }
    if (!matchToken(parser, TOKEN_CLOSE_PAREN, ")")) {//匹配右括号
        strcpy(parser->parserMessage, "invalid sql: missing ).");
        return NULL;
    }
    sql_stmt_insert *sqlStmtInsert = (sql_stmt_insert *)calloc(sizeof(sql_stmt_insert),1);//与update类似，可以goto
    sqlStmtInsert->tableName = tableName;
    sqlStmtInsert->fields = fields;
    sqlStmtInsert->values = values;
    return sqlStmtInsert;
};

