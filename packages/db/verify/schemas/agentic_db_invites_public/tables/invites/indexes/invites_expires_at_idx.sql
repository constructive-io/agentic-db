-- Verify: schemas/agentic_db_invites_public/tables/invites/indexes/invites_expires_at_idx


SELECT verify_index('agentic_db_invites_public.invites', 'invites_expires_at_idx');


