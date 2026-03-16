-- Verify: schemas/agent_db_invites_public/tables/org_claimed_invites/indexes/org_claimed_invites_receiver_id_idx


SELECT verify_index('agent_db_invites_public.org_claimed_invites', 'org_claimed_invites_receiver_id_idx');


