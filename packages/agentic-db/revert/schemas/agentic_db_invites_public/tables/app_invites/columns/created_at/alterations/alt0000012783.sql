-- Revert: schemas/agentic_db_invites_public/tables/app_invites/columns/created_at/alterations/alt0000012783


ALTER TABLE agentic_db_invites_public.app_invites 
  ALTER COLUMN created_at DROP DEFAULT;


