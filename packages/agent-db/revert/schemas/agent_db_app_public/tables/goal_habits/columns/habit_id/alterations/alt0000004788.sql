-- Revert: schemas/agent_db_app_public/tables/goal_habits/columns/habit_id/alterations/alt0000004788


ALTER TABLE "agent_db_app_public".goal_habits 
  ALTER COLUMN habit_id DROP NOT NULL;


