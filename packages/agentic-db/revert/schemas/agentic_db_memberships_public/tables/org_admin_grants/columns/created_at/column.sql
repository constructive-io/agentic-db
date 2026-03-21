-- Revert: schemas/agentic_db_memberships_public/tables/org_admin_grants/columns/created_at/column


ALTER TABLE agentic_db_memberships_public.org_admin_grants 
  DROP COLUMN created_at RESTRICT;


