-- Verify: schemas/agent_db_user_identifiers_public/tables/emails/policies/auth_del/policy


SELECT verify_policy('auth_del', 'agent_db_user_identifiers_public.emails');


