-- Revert: schemas/agentic_db_app_public/tables/goal_projects/columns/project_id/column


ALTER TABLE "agentic_db_app_public".goal_projects 
  DROP COLUMN project_id RESTRICT;


