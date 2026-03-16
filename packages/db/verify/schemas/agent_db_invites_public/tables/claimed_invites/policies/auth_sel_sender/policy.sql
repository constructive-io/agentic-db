-- Verify: schemas/agent_db_invites_public/tables/claimed_invites/policies/auth_sel_sender/policy


SELECT verify_policy('auth_sel_sender', 'agent_db_invites_public.claimed_invites');


