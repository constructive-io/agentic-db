-- Verify schemas/metaschema_modules_public/tables/billing_provider_module/table on pg

BEGIN;

SELECT
  id,
  database_id,
  schema_id,
  private_schema_id,
  provider,
  products_table_id,
  prices_table_id,
  subscriptions_table_id,
  billing_customers_table_id,
  billing_customers_table_name,
  billing_products_table_id,
  billing_products_table_name,
  billing_prices_table_id,
  billing_prices_table_name,
  billing_subscriptions_table_id,
  billing_subscriptions_table_name,
  billing_webhook_events_table_id,
  billing_webhook_events_table_name,
  process_billing_event_function,
  prefix
FROM metaschema_modules_public.billing_provider_module
WHERE FALSE;

ROLLBACK;
