-- Revert: schemas/agentic_db_app_public/tables/session_archives/columns/embedding/column


ALTER TABLE "agentic_db_app_public".session_archives 
  DROP COLUMN embedding RESTRICT;


