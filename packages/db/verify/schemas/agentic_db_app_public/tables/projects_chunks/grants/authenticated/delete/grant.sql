-- Verify: schemas/agentic_db_app_public/tables/projects_chunks/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.projects_chunks', 'delete', 'authenticated');


