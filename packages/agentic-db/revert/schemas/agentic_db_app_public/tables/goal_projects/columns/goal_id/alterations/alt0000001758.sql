-- Revert: schemas/agentic_db_app_public/tables/goal_projects/columns/goal_id/alterations/alt0000001758


ALTER TABLE "agentic_db_app_public".goal_projects 
  ALTER COLUMN goal_id DROP NOT NULL;


