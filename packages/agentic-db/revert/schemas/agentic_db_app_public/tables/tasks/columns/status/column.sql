-- Revert: schemas/agentic_db_app_public/tables/tasks/columns/status/column


ALTER TABLE "agentic_db_app_public".tasks 
  DROP COLUMN status RESTRICT;


