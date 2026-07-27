-- Deploy: schemas/agentic_db_app_public/tables/tool_definitions/columns/id/alterations/alt0000000001
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/table
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/columns/id/column


ALTER TABLE agentic_db_app_public.tool_definitions 
  ALTER COLUMN id SET NOT NULL;

