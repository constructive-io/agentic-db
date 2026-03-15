-- Revert: schemas/agent_db_memberships_public/tables/org_members/policies/enable_row_level_security


ALTER TABLE agent_db_memberships_public.org_members 
  DISABLE ROW LEVEL SECURITY;


