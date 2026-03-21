-- Verify: schemas/agentic_db_invites_public/tables/claimed_invites/indexes/claimed_invites_created_at_idx


SELECT verify_index('agentic_db_invites_public.claimed_invites', 'claimed_invites_created_at_idx');


