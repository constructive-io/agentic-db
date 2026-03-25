-- Verify: schemas/agentic_db_app_public/tables/tool_definitions_chunks/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.tool_definitions_chunks', 'update', 'authenticated');


