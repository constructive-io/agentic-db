-- Revert: schemas/agentic_db_invites_public/tables/app_invites/columns/invite_valid/column


ALTER TABLE agentic_db_invites_public.app_invites 
  DROP COLUMN invite_valid RESTRICT;


