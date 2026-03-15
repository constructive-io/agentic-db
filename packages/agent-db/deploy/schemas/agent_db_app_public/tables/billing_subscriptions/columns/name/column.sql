-- Deploy: schemas/agent_db_app_public/tables/billing_subscriptions/columns/name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/billing_subscriptions/table
-- requires: schemas/agent_db_app_public/tables/billing_subscriptions/columns/updated_at/alterations/alt0000001459


ALTER TABLE agent_db_app_public.billing_subscriptions 
  ADD COLUMN name text;

