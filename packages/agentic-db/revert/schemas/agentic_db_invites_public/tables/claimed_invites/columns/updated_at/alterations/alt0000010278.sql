-- Revert: schemas/agentic_db_invites_public/tables/claimed_invites/columns/updated_at/alterations/alt0000010278


ALTER TABLE agentic_db_invites_public.claimed_invites 
  ALTER COLUMN updated_at DROP DEFAULT;


