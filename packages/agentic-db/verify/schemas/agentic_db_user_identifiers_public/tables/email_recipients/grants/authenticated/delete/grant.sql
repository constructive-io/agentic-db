-- Verify: schemas/agentic_db_user_identifiers_public/tables/email_recipients/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_user_identifiers_public.email_recipients', 'delete', 'authenticated');


