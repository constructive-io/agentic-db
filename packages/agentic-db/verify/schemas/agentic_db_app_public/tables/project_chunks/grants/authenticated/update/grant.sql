-- Verify: schemas/agentic_db_app_public/tables/project_chunks/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.project_chunks', 'update', 'authenticated');


