-- Verify: schemas/agentic_db_user_identifiers_public/tables/email_notes/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_user_identifiers_public.email_notes', 'insert', 'authenticated');


