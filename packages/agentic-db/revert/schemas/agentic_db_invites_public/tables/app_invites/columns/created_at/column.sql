-- Revert: schemas/agentic_db_invites_public/tables/app_invites/columns/created_at/column


ALTER TABLE agentic_db_invites_public.app_invites 
  DROP COLUMN created_at RESTRICT;


