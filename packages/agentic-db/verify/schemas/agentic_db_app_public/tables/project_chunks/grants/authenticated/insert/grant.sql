-- Verify: schemas/agentic_db_app_public/tables/project_chunks/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.project_chunks', 'insert', 'authenticated');


