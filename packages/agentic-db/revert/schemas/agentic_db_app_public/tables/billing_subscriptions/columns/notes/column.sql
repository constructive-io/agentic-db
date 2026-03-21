-- Revert: schemas/agentic_db_app_public/tables/billing_subscriptions/columns/notes/column


ALTER TABLE agentic_db_app_public.billing_subscriptions 
  DROP COLUMN notes RESTRICT;


