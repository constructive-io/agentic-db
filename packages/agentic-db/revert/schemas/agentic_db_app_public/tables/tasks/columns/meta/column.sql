-- Revert: schemas/agentic_db_app_public/tables/tasks/columns/meta/column


ALTER TABLE "agentic_db_app_public".tasks 
  DROP COLUMN meta RESTRICT;


