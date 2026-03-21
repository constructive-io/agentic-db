-- Revert: schemas/agentic_db_app_public/tables/sessions/columns/status/column


ALTER TABLE "agentic_db_app_public".sessions 
  DROP COLUMN status RESTRICT;


