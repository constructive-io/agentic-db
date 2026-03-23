-- Verify: schemas/agentic_db_app_public/tables/tool_executions/indexes/tool_executions_status_idx


SELECT verify_index('agentic_db_app_public.tool_executions', 'tool_executions_status_idx');


