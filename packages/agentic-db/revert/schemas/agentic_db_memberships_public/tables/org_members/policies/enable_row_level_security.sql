-- Revert: schemas/agentic_db_memberships_public/tables/org_members/policies/enable_row_level_security


ALTER TABLE agentic_db_memberships_public.org_members 
  DISABLE ROW LEVEL SECURITY;


