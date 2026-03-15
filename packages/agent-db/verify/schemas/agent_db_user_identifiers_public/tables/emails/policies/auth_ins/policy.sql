-- Verify: schemas/agent_db_user_identifiers_public/tables/emails/policies/auth_ins/policy


SELECT verify_policy('auth_ins', 'agent_db_user_identifiers_public.emails');


