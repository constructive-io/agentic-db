-- Revert: schemas/agentic_db_invites_public/tables/org_claimed_invites/columns/updated_at/alterations/alt0000001995


ALTER TABLE agentic_db_invites_public.org_claimed_invites 
  ALTER COLUMN updated_at DROP DEFAULT;


