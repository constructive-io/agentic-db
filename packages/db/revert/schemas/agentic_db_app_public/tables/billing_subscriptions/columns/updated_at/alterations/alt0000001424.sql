-- Revert: schemas/agentic_db_app_public/tables/billing_subscriptions/columns/updated_at/alterations/alt0000001424


ALTER TABLE "agentic_db_app_public".billing_subscriptions 
  ALTER COLUMN updated_at DROP NOT NULL;


