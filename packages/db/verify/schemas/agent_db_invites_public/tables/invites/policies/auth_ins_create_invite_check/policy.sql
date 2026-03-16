-- Verify: schemas/agent_db_invites_public/tables/invites/policies/auth_ins_create_invite_check/policy


SELECT verify_policy('auth_ins_create_invite_check', 'agent_db_invites_public.invites');


