-- Verify: schemas/agentic_db_app_public/tables/email_threads/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.email_threads', 'update', 'authenticated');


