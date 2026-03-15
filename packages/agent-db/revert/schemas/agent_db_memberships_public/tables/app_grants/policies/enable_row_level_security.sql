-- Revert: schemas/agent_db_memberships_public/tables/app_grants/policies/enable_row_level_security


ALTER TABLE "agent_db_memberships_public".app_grants 
  DISABLE ROW LEVEL SECURITY;


