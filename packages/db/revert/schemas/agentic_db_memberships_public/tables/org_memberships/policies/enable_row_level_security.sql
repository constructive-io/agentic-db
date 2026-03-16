-- Revert: schemas/agentic_db_memberships_public/tables/org_memberships/policies/enable_row_level_security


ALTER TABLE "agentic_db_memberships_public".org_memberships 
  DISABLE ROW LEVEL SECURITY;


