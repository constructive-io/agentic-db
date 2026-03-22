-- Verify: schemas/agentic_db_user_identifiers_public/tables/emails/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_user_identifiers_public.emails', 'update', 'authenticated');


