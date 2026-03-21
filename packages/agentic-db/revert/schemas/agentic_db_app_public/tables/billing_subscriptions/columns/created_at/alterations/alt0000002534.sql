-- Revert: schemas/agentic_db_app_public/tables/billing_subscriptions/columns/created_at/alterations/alt0000002534


ALTER TABLE "agentic_db_app_public".billing_subscriptions 
  ALTER COLUMN created_at DROP NOT NULL;


