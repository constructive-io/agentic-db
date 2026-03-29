-- Revert: schemas/agentic_db_invites_public/tables/org_invites/columns/invite_limit/alterations/alt0000010294


ALTER TABLE agentic_db_invites_public.org_invites 
  ALTER COLUMN invite_limit DROP NOT NULL;


