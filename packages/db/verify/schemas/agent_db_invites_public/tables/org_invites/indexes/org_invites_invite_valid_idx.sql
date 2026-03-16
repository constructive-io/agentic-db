-- Verify: schemas/agent_db_invites_public/tables/org_invites/indexes/org_invites_invite_valid_idx


SELECT verify_index('agent_db_invites_public.org_invites', 'org_invites_invite_valid_idx');


