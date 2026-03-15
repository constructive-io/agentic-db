-- Revert: schemas/agent_db_app_public/tables/goal_habits/columns/goal_id/column


ALTER TABLE "agent_db_app_public".goal_habits 
  DROP COLUMN goal_id RESTRICT;


