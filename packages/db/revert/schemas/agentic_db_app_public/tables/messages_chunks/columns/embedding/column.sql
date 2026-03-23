-- Revert: schemas/agentic_db_app_public/tables/messages_chunks/columns/embedding/column


ALTER TABLE "agentic_db_app_public".messages_chunks 
  DROP COLUMN embedding RESTRICT;


