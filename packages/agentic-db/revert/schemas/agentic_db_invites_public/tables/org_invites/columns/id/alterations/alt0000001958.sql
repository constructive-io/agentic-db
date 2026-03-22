-- Revert: schemas/agentic_db_invites_public/tables/org_invites/columns/id/alterations/alt0000001958


ALTER TABLE agentic_db_invites_public.org_invites 
  ALTER COLUMN id DROP NOT NULL;


