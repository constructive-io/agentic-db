-- Revert: schemas/agentic_db_invites_public/tables/app_invites/columns/invite_valid/alterations/alt0000012767


ALTER TABLE agentic_db_invites_public.app_invites 
  ALTER COLUMN invite_valid DROP NOT NULL;


