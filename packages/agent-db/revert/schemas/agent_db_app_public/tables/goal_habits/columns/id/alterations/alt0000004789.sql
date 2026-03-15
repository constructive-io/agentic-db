-- Revert: schemas/agent_db_app_public/tables/goal_habits/columns/id/alterations/alt0000004789


ALTER TABLE "agent_db_app_public".goal_habits 
  ALTER COLUMN id DROP NOT NULL;


