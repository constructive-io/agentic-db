-- Revert: schemas/agent_db_app_public/tables/agent_tools/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".agent_tools 
  DISABLE ROW LEVEL SECURITY;


