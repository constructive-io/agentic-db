-- Revert: schemas/agentic_db_app_public/tables/email_threads/columns/last_message_at/column


ALTER TABLE "agentic_db_app_public".email_threads 
  DROP COLUMN last_message_at RESTRICT;


