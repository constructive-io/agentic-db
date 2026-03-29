-- Verify: schemas/agentic_db_app_public/tables/email_threads_chunks/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.email_threads_chunks', 'insert', 'authenticated');


