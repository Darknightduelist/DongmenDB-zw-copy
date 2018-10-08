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
    ///sqlStmtUpdate->tableName
    /// sqlStmtUpdate->fields
    /// sqlStmtUpdate->fieldsExpr
    physical_scan *scan = physical_scan_table_create(db, sqlStmtUpdate->tableName, tx);
    scan->insert(scan);
    for (size_t i = 0; i < sqlStmtUpdate->fields->size; i++){

        char *fieldName = arraylist_get(sqlStmtUpdate->fields, i);

        void_ptr *ptr = (void_ptr *) calloc(sizeof(void_ptr *), 1);
        hashmap_get(scan->physicalScanTable->tableInfo->fields, fieldName, ptr);
        field_info *fieldInfo = *ptr;

        /* TODO: 完整性检查 */
        int type = fieldInfo->type;
        if (type == DATA_TYPE_INT) {
            integer *val = arraylist_get(sqlStmtUpdate->fieldsExpr, i);
            scan->setInt(scan, sqlStmtUpdate->tableName, fieldName, val->val);
        }else if (type == DATA_TYPE_CHAR){
            char *val = arraylist_get(sqlStmtUpdate->fieldsExpr, i);
            /*字符串超出定义时的长度，则截断字符串.*/
            if(fieldInfo->length<strlen(val)){
                val[fieldInfo->length] = '\0';
            }
            scan->setString(scan, sqlStmtUpdate->tableName, fieldName, val);
        }else{
            return DONGMENDB_EINVALIDSQL;
        }
    }
    return DONGMENDB_OK;

};