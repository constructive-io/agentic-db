-- Revert: schemas/agentic_db_invites_public/tables/org_claimed_invites/columns/created_at/alterations/alt0000010317


ALTER TABLE agentic_db_invites_public.org_claimed_invites 
  ALTER COLUMN created_at DROP DEFAULT;


