-- Verify: schemas/agentic_db_app_public/tables/emails_chunks/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.emails_chunks', 'delete', 'authenticated');


