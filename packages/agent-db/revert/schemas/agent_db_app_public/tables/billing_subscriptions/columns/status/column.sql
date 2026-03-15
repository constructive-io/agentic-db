-- Revert: schemas/agent_db_app_public/tables/billing_subscriptions/columns/status/column


ALTER TABLE agent_db_app_public.billing_subscriptions 
  DROP COLUMN status RESTRICT;


