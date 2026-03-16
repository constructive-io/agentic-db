-- Verify: schemas/agent_db_user_identifiers_public/tables/phone_numbers/policies/auth_sel/policy


SELECT verify_policy('auth_sel', 'agent_db_user_identifiers_public.phone_numbers');


