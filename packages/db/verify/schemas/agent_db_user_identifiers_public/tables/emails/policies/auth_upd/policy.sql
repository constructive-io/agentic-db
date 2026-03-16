-- Verify: schemas/agent_db_user_identifiers_public/tables/emails/policies/auth_upd/policy


SELECT verify_policy('auth_upd', 'agent_db_user_identifiers_public.emails');


