-- Revert: schemas/agent_db_app_public/tables/goal_projects/columns/project_id/alterations/alt0000004794


ALTER TABLE "agent_db_app_public".goal_projects 
  ALTER COLUMN project_id DROP NOT NULL;


