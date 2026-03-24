-- Verify: schemas/agentic_db_app_public/tables/emails_chunks/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.emails_chunks', 'insert', 'authenticated');


