-- Verify: schemas/agentic_db_app_public/tables/tools/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.tools', 'update', 'authenticated');


