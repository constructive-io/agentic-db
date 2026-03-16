-- Revert: schemas/agent_db_app_public/tables/goal_projects/columns/id/column


ALTER TABLE "agent_db_app_public".goal_projects 
  DROP COLUMN id RESTRICT;


