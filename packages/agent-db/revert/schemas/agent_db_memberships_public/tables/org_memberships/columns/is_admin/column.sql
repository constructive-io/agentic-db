-- Revert: schemas/agent_db_memberships_public/tables/org_memberships/columns/is_admin/column


ALTER TABLE agent_db_memberships_public.org_memberships 
  DROP COLUMN is_admin RESTRICT;


