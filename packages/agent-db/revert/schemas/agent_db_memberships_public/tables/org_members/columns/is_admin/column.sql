-- Revert: schemas/agent_db_memberships_public/tables/org_members/columns/is_admin/column


ALTER TABLE agent_db_memberships_public.org_members 
  DROP COLUMN is_admin RESTRICT;


