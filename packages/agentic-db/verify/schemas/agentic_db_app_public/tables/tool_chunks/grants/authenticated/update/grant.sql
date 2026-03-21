-- Verify: schemas/agentic_db_app_public/tables/tool_chunks/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.tool_chunks', 'update', 'authenticated');


