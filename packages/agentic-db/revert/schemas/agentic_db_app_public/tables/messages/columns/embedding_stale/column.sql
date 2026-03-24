-- Revert: schemas/agentic_db_app_public/tables/messages/columns/embedding_stale/column


ALTER TABLE "agentic_db_app_public".messages 
  DROP COLUMN embedding_stale RESTRICT;


