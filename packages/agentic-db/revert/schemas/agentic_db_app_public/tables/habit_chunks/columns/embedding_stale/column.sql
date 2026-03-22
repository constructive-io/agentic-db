-- Revert: schemas/agentic_db_app_public/tables/habit_chunks/columns/embedding_stale/column


ALTER TABLE "agentic_db_app_public".habit_chunks 
  DROP COLUMN embedding_stale RESTRICT;


