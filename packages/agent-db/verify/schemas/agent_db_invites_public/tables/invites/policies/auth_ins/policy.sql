-- Verify: schemas/agent_db_invites_public/tables/invites/policies/auth_ins/policy


SELECT verify_policy('auth_ins', 'agent_db_invites_public.invites');


