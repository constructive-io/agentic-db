-- Revert: schemas/agentic_db_memberships_public/tables/org_memberships/columns/updated_at/alterations/alt0000001485


ALTER TABLE agentic_db_memberships_public.org_memberships 
  ALTER COLUMN updated_at DROP DEFAULT;


