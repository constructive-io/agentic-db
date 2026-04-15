-- Verify: schemas/agentic_db_invites_public/tables/app_invites/indexes/app_invites_expires_at_idx


SELECT verify_index('agentic_db_invites_public.app_invites', 'app_invites_expires_at_idx');


