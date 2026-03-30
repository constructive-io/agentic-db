-- Revert: schemas/agentic_db_app_public/tables/email_threads/columns/embedding/column


ALTER TABLE "agentic_db_app_public".email_threads 
  DROP COLUMN embedding RESTRICT;


