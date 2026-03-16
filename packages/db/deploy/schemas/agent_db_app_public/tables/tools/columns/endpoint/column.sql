-- Deploy: schemas/agent_db_app_public/tables/tools/columns/endpoint/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tools/table
-- requires: schemas/agent_db_app_public/tables/tools/columns/output_schema/column


ALTER TABLE "agent_db_app_public".tools 
  ADD COLUMN endpoint text;

