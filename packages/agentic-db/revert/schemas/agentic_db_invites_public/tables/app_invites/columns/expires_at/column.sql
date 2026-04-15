-- Revert: schemas/agentic_db_invites_public/tables/app_invites/columns/expires_at/column


ALTER TABLE agentic_db_invites_public.app_invites 
  DROP COLUMN expires_at RESTRICT;


