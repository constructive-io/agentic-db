-- Revert: schemas/agent_db_app_public/tables/billing_subscriptions/columns/updated_at/alterations/alt0000004628


ALTER TABLE "agent_db_app_public".billing_subscriptions 
  ALTER COLUMN updated_at DROP NOT NULL;


