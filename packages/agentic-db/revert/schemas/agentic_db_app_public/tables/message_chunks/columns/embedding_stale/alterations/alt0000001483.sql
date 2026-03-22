-- Revert: schemas/agentic_db_app_public/tables/message_chunks/columns/embedding_stale/alterations/alt0000001483


ALTER TABLE "agentic_db_app_public".message_chunks 
  ALTER COLUMN embedding_stale DROP NOT NULL;


