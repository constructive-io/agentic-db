-- Revert: schemas/agent_db_permissions_public/tables/org_permissions/policies/enable_row_level_security


ALTER TABLE "agent_db_permissions_public".org_permissions 
  DISABLE ROW LEVEL SECURITY;


