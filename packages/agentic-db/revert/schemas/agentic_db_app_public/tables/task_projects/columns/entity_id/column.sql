-- Revert: schemas/agentic_db_app_public/tables/task_projects/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".task_projects 
  DROP COLUMN entity_id RESTRICT;


