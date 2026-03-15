-- Revert: schemas/agent_db_app_public/tables/billing_subscriptions/columns/id/alterations/alt0000004671


ALTER TABLE "agent_db_app_public".billing_subscriptions 
  ALTER COLUMN id DROP NOT NULL;


