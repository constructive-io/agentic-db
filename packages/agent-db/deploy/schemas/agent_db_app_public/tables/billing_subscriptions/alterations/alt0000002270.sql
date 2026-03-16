-- Deploy: schemas/agent_db_app_public/tables/billing_subscriptions/alterations/alt0000002270
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/billing_subscriptions/table
-- requires: schemas/agent_db_app_public/tables/user_settings/columns/category/column


ALTER TABLE "agent_db_app_public".billing_subscriptions 
  DISABLE ROW LEVEL SECURITY;

