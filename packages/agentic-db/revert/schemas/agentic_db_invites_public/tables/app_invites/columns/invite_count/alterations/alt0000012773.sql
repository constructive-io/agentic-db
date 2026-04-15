-- Revert: schemas/agentic_db_invites_public/tables/app_invites/columns/invite_count/alterations/alt0000012773


ALTER TABLE agentic_db_invites_public.app_invites 
  ALTER COLUMN invite_count DROP NOT NULL;


