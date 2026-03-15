-- Revert: schemas/agent_db_app_public/tables/habit_logs/policies/enable_row_level_security


ALTER TABLE "agent_db_app_public".habit_logs 
  DISABLE ROW LEVEL SECURITY;


