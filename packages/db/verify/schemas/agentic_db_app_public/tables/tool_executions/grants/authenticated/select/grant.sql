-- Verify: schemas/agentic_db_app_public/tables/tool_executions/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.tool_executions', 'select', 'authenticated');


