-- Verify: schemas/agentic_db_app_public/tables/repository_chunks/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.repository_chunks', 'select', 'authenticated');


