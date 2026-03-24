-- Verify: schemas/agentic_db_app_public/tables/email_notes/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.email_notes', 'select', 'authenticated');


