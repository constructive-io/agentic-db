-- Verify: schemas/agentic_db_app_public/tables/threads/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.threads', 'update', 'authenticated');


