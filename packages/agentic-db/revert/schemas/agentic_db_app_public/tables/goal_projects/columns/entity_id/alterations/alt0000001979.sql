-- Revert: schemas/agentic_db_app_public/tables/goal_projects/columns/entity_id/alterations/alt0000001979


ALTER TABLE "agentic_db_app_public".goal_projects 
  ALTER COLUMN entity_id DROP NOT NULL;


