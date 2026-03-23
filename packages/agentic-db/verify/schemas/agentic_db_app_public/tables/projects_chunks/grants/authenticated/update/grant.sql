-- Verify: schemas/agentic_db_app_public/tables/projects_chunks/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.projects_chunks', 'update', 'authenticated');


