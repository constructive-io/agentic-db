-- Revert: schemas/agentic_db_app_public/tables/billing_subscriptions/columns/name/column


ALTER TABLE agentic_db_app_public.billing_subscriptions 
  DROP COLUMN name RESTRICT;


