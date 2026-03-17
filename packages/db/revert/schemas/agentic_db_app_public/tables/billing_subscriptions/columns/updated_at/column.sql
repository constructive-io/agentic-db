-- Revert: schemas/agentic_db_app_public/tables/billing_subscriptions/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".billing_subscriptions 
  DROP COLUMN updated_at RESTRICT;


