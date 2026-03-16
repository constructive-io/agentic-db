-- Revert: schemas/agent_db_app_public/tables/agents/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".agents 
  DISABLE ROW LEVEL SECURITY;


