-- Verify: schemas/agentic_db_app_public/tables/emails_chunks/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.emails_chunks', 'update', 'authenticated');


