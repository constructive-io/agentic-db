-- Revert: schemas/agentic_db_invites_public/tables/app_invites/columns/email/column


ALTER TABLE agentic_db_invites_public.app_invites 
  DROP COLUMN email RESTRICT;


