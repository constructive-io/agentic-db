-- Deploy: schemas/agent_db_app_public/tables/execution_log/columns/step_name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/execution_log/table
-- requires: schemas/agent_db_app_public/tables/execution_log/columns/updated_at/alterations/alt0000002779


ALTER TABLE "agent_db_app_public".execution_log 
  ADD COLUMN step_name text;

