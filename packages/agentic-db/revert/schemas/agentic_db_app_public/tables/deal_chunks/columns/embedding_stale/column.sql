-- Revert: schemas/agentic_db_app_public/tables/deal_chunks/columns/embedding_stale/column


ALTER TABLE "agentic_db_app_public".deal_chunks 
  DROP COLUMN embedding_stale RESTRICT;


