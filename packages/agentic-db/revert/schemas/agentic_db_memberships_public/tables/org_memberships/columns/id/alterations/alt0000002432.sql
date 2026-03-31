-- Revert: schemas/agentic_db_memberships_public/tables/org_memberships/columns/id/alterations/alt0000002432


ALTER TABLE agentic_db_memberships_public.org_memberships 
  ALTER COLUMN id DROP NOT NULL;


