-- Revert: schemas/agent_db_memberships_public/tables/app_memberships/policies/enable_row_level_security


ALTER TABLE "agent_db_memberships_public".app_memberships 
  DISABLE ROW LEVEL SECURITY;


