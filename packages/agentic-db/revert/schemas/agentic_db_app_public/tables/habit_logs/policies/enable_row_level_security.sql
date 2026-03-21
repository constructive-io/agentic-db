-- Revert: schemas/agentic_db_app_public/tables/habit_logs/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.habit_logs 
  DISABLE ROW LEVEL SECURITY;


