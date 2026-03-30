-- Revert: schemas/agentic_db_app_public/tables/tasks/columns/embedding_stale/column


ALTER TABLE "agentic_db_app_public".tasks 
  DROP COLUMN embedding_stale RESTRICT;


