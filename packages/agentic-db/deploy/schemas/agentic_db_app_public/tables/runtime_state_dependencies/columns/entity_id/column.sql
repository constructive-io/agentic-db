-- Deploy: schemas/agentic_db_app_public/tables/runtime_state_dependencies/columns/entity_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_state_dependencies/table
-- requires: schemas/agentic_db_app_public/tables/tool_executions/indexes/tool_executions_tool_definition_id_idx


ALTER TABLE "agentic_db_app_public".runtime_state_dependencies 
  ADD COLUMN entity_id uuid;

