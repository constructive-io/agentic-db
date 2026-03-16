-- Revert: schemas/agent_db_app_public/tables/goal_projects/columns/id/alterations/alt0000002377


ALTER TABLE "agent_db_app_public".goal_projects 
  ALTER COLUMN id DROP NOT NULL;


