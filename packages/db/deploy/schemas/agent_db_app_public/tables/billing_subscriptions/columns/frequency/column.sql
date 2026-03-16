-- Deploy: schemas/agent_db_app_public/tables/billing_subscriptions/columns/frequency/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/billing_subscriptions/table
-- requires: schemas/agent_db_app_public/tables/billing_subscriptions/columns/currency/alterations/alt0000002279


ALTER TABLE "agent_db_app_public".billing_subscriptions 
  ADD COLUMN frequency text;

