-- Revert: schemas/agentic_db_app_public/tables/billing_subscriptions/columns/id/alterations/alt0000001419


ALTER TABLE "agentic_db_app_public".billing_subscriptions 
  ALTER COLUMN id DROP NOT NULL;


