-- Revert: schemas/agent_db_memberships_public/tables/org_admin_grants/columns/updated_at/column


ALTER TABLE agent_db_memberships_public.org_admin_grants 
  DROP COLUMN updated_at RESTRICT;


