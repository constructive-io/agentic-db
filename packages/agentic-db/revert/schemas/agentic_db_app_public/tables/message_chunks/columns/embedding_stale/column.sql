-- Revert: schemas/agentic_db_app_public/tables/message_chunks/columns/embedding_stale/column


ALTER TABLE "agentic_db_app_public".message_chunks 
  DROP COLUMN embedding_stale RESTRICT;


