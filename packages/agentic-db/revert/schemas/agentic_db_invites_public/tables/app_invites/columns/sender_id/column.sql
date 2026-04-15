-- Revert: schemas/agentic_db_invites_public/tables/app_invites/columns/sender_id/column


ALTER TABLE agentic_db_invites_public.app_invites 
  DROP COLUMN sender_id RESTRICT;


