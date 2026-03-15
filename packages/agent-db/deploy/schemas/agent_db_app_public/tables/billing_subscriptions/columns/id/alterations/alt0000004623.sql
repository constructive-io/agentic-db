-- Deploy: schemas/agent_db_app_public/tables/billing_subscriptions/columns/id/alterations/alt0000004623
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/billing_subscriptions/table
-- requires: schemas/agent_db_app_public/tables/user_settings/columns/category/column
-- requires: schemas/agent_db_app_public/tables/billing_subscriptions/columns/id/column


ALTER TABLE "agent_db_app_public".billing_subscriptions 
  ALTER COLUMN id SET NOT NULL;

