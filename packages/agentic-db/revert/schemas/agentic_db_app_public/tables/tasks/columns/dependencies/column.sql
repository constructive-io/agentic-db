-- Revert: schemas/agentic_db_app_public/tables/tasks/columns/dependencies/column


ALTER TABLE "agentic_db_app_public".tasks 
  DROP COLUMN dependencies RESTRICT;


