-- Verify: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/policies/auth_upd/policy


SELECT verify_policy('auth_upd', 'agentic_db_user_identifiers_public.phone_numbers');


