-- Revert: schemas/agentic_db_app_public/tables/processes/columns/status/column


ALTER TABLE "agentic_db_app_public".processes 
  DROP COLUMN status RESTRICT;


