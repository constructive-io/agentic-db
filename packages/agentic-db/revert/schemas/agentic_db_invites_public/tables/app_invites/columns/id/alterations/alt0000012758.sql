-- Revert: schemas/agentic_db_invites_public/tables/app_invites/columns/id/alterations/alt0000012758


ALTER TABLE agentic_db_invites_public.app_invites 
  ALTER COLUMN id DROP NOT NULL;


