-- Revert: schemas/agent_db_app_public/tables/billing_subscriptions/columns/entity_id/alterations/alt0000004673


ALTER TABLE "agent_db_app_public".billing_subscriptions 
  ALTER COLUMN entity_id DROP NOT NULL;


