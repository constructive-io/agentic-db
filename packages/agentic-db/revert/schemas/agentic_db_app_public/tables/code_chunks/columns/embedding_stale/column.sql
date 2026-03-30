-- Revert: schemas/agentic_db_app_public/tables/code_chunks/columns/embedding_stale/column


ALTER TABLE "agentic_db_app_public".code_chunks 
  DROP COLUMN embedding_stale RESTRICT;


