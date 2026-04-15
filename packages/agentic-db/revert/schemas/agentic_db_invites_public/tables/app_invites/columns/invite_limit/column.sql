-- Revert: schemas/agentic_db_invites_public/tables/app_invites/columns/invite_limit/column


ALTER TABLE agentic_db_invites_public.app_invites 
  DROP COLUMN invite_limit RESTRICT;


