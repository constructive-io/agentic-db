-- Revert: schemas/agentic_db_app_public/tables/billing_subscriptions/columns/entity_id/alterations/alt0000001421


ALTER TABLE "agentic_db_app_public".billing_subscriptions 
  ALTER COLUMN entity_id DROP NOT NULL;


