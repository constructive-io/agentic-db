-- Deploy: schemas/agent_db_app_public/tables/tools/columns/name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tools/table
-- requires: schemas/agent_db_app_public/tables/tools/columns/updated_at/alterations/alt0000004439


ALTER TABLE "agent_db_app_public".tools 
  ADD COLUMN name text;

