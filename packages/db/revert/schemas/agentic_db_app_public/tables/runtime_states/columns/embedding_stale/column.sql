-- Revert: schemas/agentic_db_app_public/tables/runtime_states/columns/embedding_stale/column


ALTER TABLE "agentic_db_app_public".runtime_states 
  DROP COLUMN embedding_stale RESTRICT;


