-- Revert: schemas/agentic_db_invites_public/tables/app_claimed_invites/columns/created_at/alterations/alt0000012792


ALTER TABLE agentic_db_invites_public.app_claimed_invites 
  ALTER COLUMN created_at DROP DEFAULT;


