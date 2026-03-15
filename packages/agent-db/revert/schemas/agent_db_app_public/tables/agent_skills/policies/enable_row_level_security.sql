-- Revert: schemas/agent_db_app_public/tables/agent_skills/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".agent_skills 
  DISABLE ROW LEVEL SECURITY;


