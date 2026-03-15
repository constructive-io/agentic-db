-- Verify: schemas/agent_db_invites_public/tables/org_invites/policies/auth_del/policy


SELECT verify_policy('auth_del', 'agent_db_invites_public.org_invites');


