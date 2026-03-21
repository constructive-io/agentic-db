-- Revert: schemas/agentic_db_app_public/tables/tasks/columns/tags/column


ALTER TABLE "agentic_db_app_public".tasks 
  DROP COLUMN tags RESTRICT;


