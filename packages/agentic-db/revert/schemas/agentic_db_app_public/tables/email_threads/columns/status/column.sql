-- Revert: schemas/agentic_db_app_public/tables/email_threads/columns/status/column


ALTER TABLE "agentic_db_app_public".email_threads 
  DROP COLUMN status RESTRICT;


