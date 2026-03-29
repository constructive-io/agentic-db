-- Revert: schemas/agentic_db_invites_public/tables/org_invites/columns/expires_at/alterations/alt0000003344


ALTER TABLE agentic_db_invites_public.org_invites 
  ALTER COLUMN expires_at DROP NOT NULL;


