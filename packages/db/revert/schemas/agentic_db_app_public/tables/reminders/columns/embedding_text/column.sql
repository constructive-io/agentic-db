-- Revert: schemas/agentic_db_app_public/tables/reminders/columns/embedding_text/column


ALTER TABLE "agentic_db_app_public".reminders 
  DROP COLUMN embedding_text RESTRICT;


