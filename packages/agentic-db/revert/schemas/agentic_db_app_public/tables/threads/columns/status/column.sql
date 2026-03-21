-- Revert: schemas/agentic_db_app_public/tables/threads/columns/status/column


ALTER TABLE "agentic_db_app_public".threads 
  DROP COLUMN status RESTRICT;


