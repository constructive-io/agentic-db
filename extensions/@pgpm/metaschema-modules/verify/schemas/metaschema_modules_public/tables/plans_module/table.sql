-- Verify schemas/metaschema_modules_public/tables/plans_module/table on pg

BEGIN;

SELECT id, database_id, schema_id, private_schema_id,
       plans_table_id, plans_table_name,
       plan_limits_table_id, plan_limits_table_name,
       apply_plan_function, apply_plan_aggregate_function,
       prefix
FROM metaschema_modules_public.plans_module
WHERE FALSE;

ROLLBACK;
