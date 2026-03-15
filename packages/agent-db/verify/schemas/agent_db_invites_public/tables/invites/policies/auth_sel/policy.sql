-- Verify: schemas/agent_db_invites_public/tables/invites/policies/auth_sel/policy


SELECT verify_policy('auth_sel', 'agent_db_invites_public.invites');


