-- Revert: schemas/agent_db_app_public/tables/goals/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".goals 
  DISABLE ROW LEVEL SECURITY;


