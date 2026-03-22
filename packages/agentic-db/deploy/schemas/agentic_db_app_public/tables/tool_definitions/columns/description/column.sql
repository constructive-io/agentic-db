-- Deploy: schemas/agentic_db_app_public/tables/tool_definitions/columns/description/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/table
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/columns/name/alterations/alt0000006105


ALTER TABLE agentic_db_app_public.tool_definitions 
  ADD COLUMN description text;

