-- Deploy: schemas/agentic_db_app_public/tables/tool_definitions/columns/name/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/table
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/columns/updated_at/alterations/alt0000001492


ALTER TABLE "agentic_db_app_public".tool_definitions 
  ADD COLUMN name text;

