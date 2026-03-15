-- Verify: schemas/agent_db_invites_public/tables/invites/policies/auth_upd/policy


SELECT verify_policy('auth_upd', 'agent_db_invites_public.invites');


