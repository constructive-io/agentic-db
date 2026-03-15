-- Deploy: schemas/agent_db_app_public/tables/documents/columns/source_type/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/documents/table
-- requires: schemas/agent_db_app_public/tables/documents/columns/content/column


ALTER TABLE "agent_db_app_public".documents 
  ADD COLUMN source_type text;

