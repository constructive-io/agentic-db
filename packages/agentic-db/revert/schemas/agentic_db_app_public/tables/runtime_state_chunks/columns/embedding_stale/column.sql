-- Revert: schemas/agentic_db_app_public/tables/runtime_state_chunks/columns/embedding_stale/column


ALTER TABLE "agentic_db_app_public".runtime_state_chunks 
  DROP COLUMN embedding_stale RESTRICT;


