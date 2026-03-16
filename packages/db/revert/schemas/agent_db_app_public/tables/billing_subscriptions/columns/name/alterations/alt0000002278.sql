-- Revert: schemas/agent_db_app_public/tables/billing_subscriptions/columns/name/alterations/alt0000002278


ALTER TABLE "agent_db_app_public".billing_subscriptions 
  ALTER COLUMN name DROP NOT NULL;


