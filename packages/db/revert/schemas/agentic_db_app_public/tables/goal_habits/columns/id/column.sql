-- Revert: schemas/agentic_db_app_public/tables/goal_habits/columns/id/column


ALTER TABLE "agentic_db_app_public".goal_habits 
  DROP COLUMN id RESTRICT;


