-- Verify: schemas/agentic_db_app_public/tables/email_threads/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.email_threads', 'delete', 'authenticated');


