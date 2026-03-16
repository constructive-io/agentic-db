-- Verify: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_user_identifiers_public.phone_numbers', 'delete', 'authenticated');


