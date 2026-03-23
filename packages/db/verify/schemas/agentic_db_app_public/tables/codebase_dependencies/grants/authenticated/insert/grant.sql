-- Verify: schemas/agentic_db_app_public/tables/codebase_dependencies/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.codebase_dependencies', 'insert', 'authenticated');


