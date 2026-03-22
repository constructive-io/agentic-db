-- Revert: schemas/agentic_db_memberships_public/tables/org_memberships/columns/is_admin/column


ALTER TABLE agentic_db_memberships_public.org_memberships 
  DROP COLUMN is_admin RESTRICT;


