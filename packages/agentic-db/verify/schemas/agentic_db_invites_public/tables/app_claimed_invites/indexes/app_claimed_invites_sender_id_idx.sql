-- Verify: schemas/agentic_db_invites_public/tables/app_claimed_invites/indexes/app_claimed_invites_sender_id_idx


SELECT verify_index('agentic_db_invites_public.app_claimed_invites', 'app_claimed_invites_sender_id_idx');


