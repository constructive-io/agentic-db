-- Verify: schemas/agent_db_invites_public/tables/invites/indexes/invites_invite_valid_idx


SELECT verify_index('agent_db_invites_public.invites', 'invites_invite_valid_idx');


