-- Deploy: schemas/agentic_db_app_public/tables/tool_definitions/columns/is_active/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/table
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/columns/implementation/column


ALTER TABLE agentic_db_app_public.tool_definitions 
  ADD COLUMN is_active bool;

