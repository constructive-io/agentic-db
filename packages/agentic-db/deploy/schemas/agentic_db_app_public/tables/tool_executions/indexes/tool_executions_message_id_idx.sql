-- Deploy: schemas/agentic_db_app_public/tables/tool_executions/indexes/tool_executions_message_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_executions/table
-- requires: schemas/agentic_db_app_public/tables/tool_executions/columns/message_id/column
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/indexes/tool_definitions_is_active_idx


CREATE INDEX tool_executions_message_id_idx ON agentic_db_app_public.tool_executions USING BTREE ( message_id );

