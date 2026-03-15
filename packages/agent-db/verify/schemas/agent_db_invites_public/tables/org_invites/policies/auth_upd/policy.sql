-- Verify: schemas/agent_db_invites_public/tables/org_invites/policies/auth_upd/policy


SELECT verify_policy('auth_upd', 'agent_db_invites_public.org_invites');


