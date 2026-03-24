-- Revert: schemas/agentic_db_app_public/tables/task_projects/columns/entity_id/alterations/alt0000001923


ALTER TABLE "agentic_db_app_public".task_projects 
  ALTER COLUMN entity_id DROP NOT NULL;


