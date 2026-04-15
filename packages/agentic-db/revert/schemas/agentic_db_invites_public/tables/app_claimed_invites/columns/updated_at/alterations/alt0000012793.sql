-- Revert: schemas/agentic_db_invites_public/tables/app_claimed_invites/columns/updated_at/alterations/alt0000012793


ALTER TABLE agentic_db_invites_public.app_claimed_invites 
  ALTER COLUMN updated_at DROP DEFAULT;


