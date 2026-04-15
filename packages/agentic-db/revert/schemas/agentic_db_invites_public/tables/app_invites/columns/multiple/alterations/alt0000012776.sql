-- Revert: schemas/agentic_db_invites_public/tables/app_invites/columns/multiple/alterations/alt0000012776


ALTER TABLE agentic_db_invites_public.app_invites 
  ALTER COLUMN multiple DROP NOT NULL;


