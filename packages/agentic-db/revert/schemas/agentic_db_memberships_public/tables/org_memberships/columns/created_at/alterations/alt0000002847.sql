-- Revert: schemas/agentic_db_memberships_public/tables/org_memberships/columns/created_at/alterations/alt0000002847


ALTER TABLE agentic_db_memberships_public.org_memberships 
  ALTER COLUMN created_at DROP DEFAULT;


