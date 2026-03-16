-- Verify: schemas/agent_db_invites_public/tables/invites/policies/auth_del/policy


SELECT verify_policy('auth_del', 'agent_db_invites_public.invites');


