-- Revert: schemas/agentic_db_app_public/tables/goal_habits/constraints/goal_habits_habit_id_fkey/constraint


ALTER TABLE agentic_db_app_public.goal_habits 
  DROP CONSTRAINT goal_habits_habit_id_fkey;


