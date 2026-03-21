-- Revert: schemas/agentic_db_app_public/tables/processes/columns/logs_path/column


ALTER TABLE "agentic_db_app_public".processes 
  DROP COLUMN logs_path RESTRICT;


