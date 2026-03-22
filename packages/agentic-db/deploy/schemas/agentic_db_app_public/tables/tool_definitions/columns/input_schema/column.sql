-- Deploy: schemas/agentic_db_app_public/tables/tool_definitions/columns/input_schema/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/table
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/columns/description/column


ALTER TABLE agentic_db_app_public.tool_definitions 
  ADD COLUMN input_schema jsonb;

