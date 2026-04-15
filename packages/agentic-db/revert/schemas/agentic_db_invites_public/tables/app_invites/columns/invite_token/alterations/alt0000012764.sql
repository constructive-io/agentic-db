-- Revert: schemas/agentic_db_invites_public/tables/app_invites/columns/invite_token/alterations/alt0000012764


ALTER TABLE agentic_db_invites_public.app_invites 
  ALTER COLUMN invite_token DROP NOT NULL;


