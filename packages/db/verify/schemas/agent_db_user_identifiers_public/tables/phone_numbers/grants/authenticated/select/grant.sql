-- Verify: schemas/agent_db_user_identifiers_public/tables/phone_numbers/grants/authenticated/select/grant


SELECT verify_table_grant('agent_db_user_identifiers_public.phone_numbers', 'select', 'authenticated');


