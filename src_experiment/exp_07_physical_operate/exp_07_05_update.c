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

    if (sqlStmtUpdate != NULL) {
        //printf("Processing...\n");
        SRA_print(sqlStmtUpdate->where);
        /*执行select语句，获得物理扫描计划*/
        //printf("\nUpdate applying...\n");
        physical_scan *plan = plan_execute_select(db,sqlStmtUpdate->where, tx);
        plan->beforeFirst(plan);
        while (plan->next(plan)){

            for (size_t i = 0; i < sqlStmtUpdate->fields->size; i++){

                char *fieldName = arraylist_get(sqlStmtUpdate->fields, i);

                int type = plan->getField(plan,sqlStmtUpdate->tableName,fieldName)->type;
                if (type == DATA_TYPE_INT) {
                    integer *val = arraylist_get(sqlStmtUpdate->fieldsExpr, i);
                    plan->setInt(plan, sqlStmtUpdate->tableName, fieldName, val->val);
                }else if (type == DATA_TYPE_CHAR){
                    char *val = arraylist_get(sqlStmtUpdate->fieldsExpr, i);
                    plan->setString(plan, sqlStmtUpdate->tableName, fieldName, val);
                }else{
                    return DONGMENDB_EINVALIDSQL;
                }
            }
        }
        plan->close(plan);
        return 0;
    } else {
        fprintf(stderr, "ERROR: Step is wrong.\n");
        return 1;
    }
};