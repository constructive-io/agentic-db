-- Revert: schemas/agentic_db_app_public/tables/goal_habits/columns/habit_id/alterations/alt0000011440


ALTER TABLE agentic_db_app_public.goal_habits 
  ALTER COLUMN habit_id DROP NOT NULL;


