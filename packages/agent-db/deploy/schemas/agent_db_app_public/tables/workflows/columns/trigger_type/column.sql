-- Deploy: schemas/agent_db_app_public/tables/workflows/columns/trigger_type/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflows/table
-- requires: schemas/agent_db_app_public/tables/workflows/columns/description/column


ALTER TABLE "agent_db_app_public".workflows 
  ADD COLUMN trigger_type text;

