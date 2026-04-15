-- Revert: schemas/agentic_db_invites_public/tables/app_claimed_invites/columns/id/alterations/alt0000012787


ALTER TABLE agentic_db_invites_public.app_claimed_invites 
  ALTER COLUMN id DROP NOT NULL;


