-- Verify: schemas/agentic_db_app_public/tables/projects/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.projects', 'delete', 'authenticated');


