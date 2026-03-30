-- Revert: schemas/agentic_db_app_public/tables/email_threads/columns/summary/column


ALTER TABLE "agentic_db_app_public".email_threads 
  DROP COLUMN summary RESTRICT;


