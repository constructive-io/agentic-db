-- Revert: schemas/agentic_db_memberships_public/tables/org_memberships/columns/id/alterations/alt0000001637


ALTER TABLE agentic_db_memberships_public.org_memberships 
  ALTER COLUMN id DROP NOT NULL;


