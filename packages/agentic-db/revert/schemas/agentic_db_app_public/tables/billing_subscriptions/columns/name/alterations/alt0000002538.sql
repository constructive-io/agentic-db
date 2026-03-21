-- Revert: schemas/agentic_db_app_public/tables/billing_subscriptions/columns/name/alterations/alt0000002538


ALTER TABLE "agentic_db_app_public".billing_subscriptions 
  ALTER COLUMN name DROP NOT NULL;


