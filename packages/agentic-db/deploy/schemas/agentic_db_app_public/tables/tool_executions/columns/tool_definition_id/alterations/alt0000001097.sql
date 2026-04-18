-- Deploy: schemas/agentic_db_app_public/tables/tool_executions/columns/tool_definition_id/alterations/alt0000001097
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_executions/table
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx
-- requires: schemas/agentic_db_app_public/tables/tool_executions/columns/tool_definition_id/column


ALTER TABLE agentic_db_app_public.tool_executions 
  ALTER COLUMN tool_definition_id SET NOT NULL;

