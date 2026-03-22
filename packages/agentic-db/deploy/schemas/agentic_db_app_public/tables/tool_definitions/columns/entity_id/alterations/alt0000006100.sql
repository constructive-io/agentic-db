-- Deploy: schemas/agentic_db_app_public/tables/tool_definitions/columns/entity_id/alterations/alt0000006100
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/table
-- requires: schemas/agentic_db_app_public/tables/messages/columns/tool_results/column
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/columns/entity_id/column


ALTER TABLE agentic_db_app_public.tool_definitions 
  ALTER COLUMN entity_id SET NOT NULL;

