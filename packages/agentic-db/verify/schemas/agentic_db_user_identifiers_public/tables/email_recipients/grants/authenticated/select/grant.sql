-- Verify: schemas/agentic_db_user_identifiers_public/tables/email_recipients/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_user_identifiers_public.email_recipients', 'select', 'authenticated');


