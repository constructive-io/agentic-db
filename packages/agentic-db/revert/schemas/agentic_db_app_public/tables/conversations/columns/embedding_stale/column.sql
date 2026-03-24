-- Revert: schemas/agentic_db_app_public/tables/conversations/columns/embedding_stale/column


ALTER TABLE "agentic_db_app_public".conversations 
  DROP COLUMN embedding_stale RESTRICT;


