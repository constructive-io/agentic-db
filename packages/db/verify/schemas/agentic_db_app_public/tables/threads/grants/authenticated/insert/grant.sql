-- Verify: schemas/agentic_db_app_public/tables/threads/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.threads', 'insert', 'authenticated');


