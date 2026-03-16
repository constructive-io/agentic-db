-- Verify: schemas/agent_db_user_identifiers_public/tables/phone_numbers/indexes/phone_numbers_created_at_idx


SELECT verify_index('agent_db_user_identifiers_public.phone_numbers', 'phone_numbers_created_at_idx');


