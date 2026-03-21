-- Revert: schemas/agentic_db_app_public/tables/billing_subscriptions/constraints/billing_subscriptions_pkey/constraint


ALTER TABLE agentic_db_app_public.billing_subscriptions 
  DROP CONSTRAINT billing_subscriptions_pkey;


