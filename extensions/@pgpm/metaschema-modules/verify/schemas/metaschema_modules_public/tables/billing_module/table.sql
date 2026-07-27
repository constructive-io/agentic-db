-- Verify schemas/metaschema_modules_public/tables/billing_module/table on pg

BEGIN;

SELECT
  id,
  database_id,
  schema_id,
  private_schema_id,
  meters_table_id,
  meters_table_name,
  plan_subscriptions_table_id,
  plan_subscriptions_table_name,
  ledger_table_id,
  ledger_table_name,
  balances_table_id,
  balances_table_name,
  meter_sources_table_id,
  meter_sources_table_name,
  record_usage_function,
  sweep_expired_subscriptions_function,
  rollup_usage_summary_function,
  prefix
FROM metaschema_modules_public.billing_module
WHERE FALSE;

ROLLBACK;
