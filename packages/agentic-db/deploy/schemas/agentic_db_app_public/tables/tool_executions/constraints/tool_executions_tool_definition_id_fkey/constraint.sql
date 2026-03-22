-- Deploy: schemas/agentic_db_app_public/tables/tool_executions/constraints/tool_executions_tool_definition_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_executions/table
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/table
-- requires: schemas/agentic_db_app_public/tables/messages/indexes/messages_conversation_id_idx


ALTER TABLE agentic_db_app_public.tool_executions 
  ADD CONSTRAINT tool_executions_tool_definition_id_fkey 
    FOREIGN KEY(tool_definition_id) 
    REFERENCES agentic_db_app_public.tool_definitions (id) 
    ON DELETE CASCADE;

