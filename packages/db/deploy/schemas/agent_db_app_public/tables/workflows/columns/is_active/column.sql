-- Deploy: schemas/agent_db_app_public/tables/workflows/columns/is_active/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflows/table
-- requires: schemas/agent_db_app_public/tables/workflows/columns/trigger_config/column


ALTER TABLE "agent_db_app_public".workflows 
  ADD COLUMN is_active bool;

