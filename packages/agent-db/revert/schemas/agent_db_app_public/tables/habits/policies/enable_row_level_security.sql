-- Revert: schemas/agent_db_app_public/tables/habits/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".habits 
  DISABLE ROW LEVEL SECURITY;


