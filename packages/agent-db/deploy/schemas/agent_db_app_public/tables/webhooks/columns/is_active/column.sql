-- Deploy: schemas/agent_db_app_public/tables/webhooks/columns/is_active/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/webhooks/table
-- requires: schemas/agent_db_app_public/tables/webhooks/columns/secret/column


ALTER TABLE agent_db_app_public.webhooks 
  ADD COLUMN is_active bool;

