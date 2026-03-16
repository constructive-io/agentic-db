-- Verify: schemas/agentic_db_invites_public/tables/invites/indexes/invites_sender_id_idx


SELECT verify_index('agentic_db_invites_public.invites', 'invites_sender_id_idx');


