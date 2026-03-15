-- Revert: schemas/agent_db_app_public/tables/billing_subscriptions/columns/currency/column


ALTER TABLE agent_db_app_public.billing_subscriptions 
  DROP COLUMN currency RESTRICT;


