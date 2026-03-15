-- Revert: schemas/agent_db_memberships_public/tables/org_memberships/policies/enable_row_level_security


ALTER TABLE agent_db_memberships_public.org_memberships 
  DISABLE ROW LEVEL SECURITY;


