-- Deploy: schemas/agentic_db_app_public/tables/tool_executions/columns/entity_id/alterations/alt0000001498
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_executions/table
-- requires: schemas/agentic_db_app_public/tables/tool_executions/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/columns/is_active/alterations/alt0000001494


ALTER TABLE "agentic_db_app_public".tool_executions 
  ALTER COLUMN entity_id SET NOT NULL;

