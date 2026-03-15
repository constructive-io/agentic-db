-- Verify: schemas/agent_db_invites_public/tables/claimed_invites/indexes/claimed_invites_receiver_id_idx


SELECT verify_index('agent_db_invites_public.claimed_invites', 'claimed_invites_receiver_id_idx');


