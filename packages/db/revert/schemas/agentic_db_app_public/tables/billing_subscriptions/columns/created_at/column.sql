-- Revert: schemas/agentic_db_app_public/tables/billing_subscriptions/columns/created_at/column


ALTER TABLE "agentic_db_app_public".billing_subscriptions 
  DROP COLUMN created_at RESTRICT;


