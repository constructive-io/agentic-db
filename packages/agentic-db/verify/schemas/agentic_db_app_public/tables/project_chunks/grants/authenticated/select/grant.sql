-- Verify: schemas/agentic_db_app_public/tables/project_chunks/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.project_chunks', 'select', 'authenticated');


