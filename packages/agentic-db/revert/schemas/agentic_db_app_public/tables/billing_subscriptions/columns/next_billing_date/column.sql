-- Revert: schemas/agentic_db_app_public/tables/billing_subscriptions/columns/next_billing_date/column


ALTER TABLE agentic_db_app_public.billing_subscriptions 
  DROP COLUMN next_billing_date RESTRICT;


