-- Revert: schemas/agentic_db_app_public/tables/notes/columns/embedding_stale/column


ALTER TABLE "agentic_db_app_public".notes 
  DROP COLUMN embedding_stale RESTRICT;


