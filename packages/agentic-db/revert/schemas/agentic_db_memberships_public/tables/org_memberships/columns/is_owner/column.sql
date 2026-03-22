-- Revert: schemas/agentic_db_memberships_public/tables/org_memberships/columns/is_owner/column


ALTER TABLE agentic_db_memberships_public.org_memberships 
  DROP COLUMN is_owner RESTRICT;


