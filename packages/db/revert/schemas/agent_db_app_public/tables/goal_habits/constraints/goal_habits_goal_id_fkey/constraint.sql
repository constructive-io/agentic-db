-- Revert: schemas/agent_db_app_public/tables/goal_habits/constraints/goal_habits_goal_id_fkey/constraint


ALTER TABLE "agent_db_app_public".goal_habits 
  DROP CONSTRAINT goal_habits_goal_id_fkey;


