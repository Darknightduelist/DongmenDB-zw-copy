//
// Created by sam on 2018/9/18.
//
#include "physicalplan/physicalplan.h"

/*执行 update 语句*/
/*TODO: plan_execute_update， update语句执行*/
int plan_execute_update(dongmendb *db, sql_stmt_update *sqlStmtUpdate , transaction *tx){
    /*删除语句以select的物理操作为基础实现。
     * 1. 使用 sql_stmt_update 的条件参数，调用 physical_scan_select_create 创建select的物理计划并初始化;
     * 2. 执行 select 的物理计划，完成update操作
     * */
    physical_scan *scan = physical_scan_generate(db, sqlStmtUpdate->where, tx);//创建全表扫描计划
    scan->beforeFirst(scan);//初始化
    while (scan->next(scan)) {//当还有扫描计划时
        for (size_t i = 0; i < sqlStmtUpdate->fields->size; ++i) {  //arraylist *fields; //set fields 被更新的字段列表
            char *currentFieldName = arraylist_get(sqlStmtUpdate->fields, i);//获取要更新的列名
            Expression *currentFieldsExprName=arraylist_get(sqlStmtUpdate->fieldsExpr,i);//获取需要更新的值的表达式
            variant *val = (variant *) calloc(sizeof(variant), 1);//保存需要更新的字段类型
            enum data_type field_type = scan->getField(scan, sqlStmtUpdate->tableName, currentFieldName)->type; //获取列名的的类型
            physical_scan_evaluate_expression(currentFieldsExprName, scan, val);//计算后序表达式的值

            if (val->type != field_type) {
                fprintf(stdout, "invalid sql: field type mismatched.");
                return DONGMENDB_EINVALIDSQL;//1
            }
            if (val->type == DATA_TYPE_INT) {
                scan->setInt(scan, sqlStmtUpdate->tableName, currentFieldName, val->intValue);
            } else if (val->type == DATA_TYPE_CHAR) {
                scan->setString(scan, sqlStmtUpdate->tableName, currentFieldName, val->strValue);
            }
        }
    }
    scan->close(scan);
    return DONGMENDB_OK;//0
};