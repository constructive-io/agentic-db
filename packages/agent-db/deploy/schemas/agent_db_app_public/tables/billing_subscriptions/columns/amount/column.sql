-- Deploy: schemas/agent_db_app_public/tables/billing_subscriptions/columns/amount/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/billing_subscriptions/table
-- requires: schemas/agent_db_app_public/tables/billing_subscriptions/columns/name/alterations/alt0000004678


ALTER TABLE "agent_db_app_public".billing_subscriptions 
  ADD COLUMN amount numeric;

