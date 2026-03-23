-- Verify: schemas/agentic_db_app_public/tables/tool_definitions/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.tool_definitions', 'delete', 'authenticated');


