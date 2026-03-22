-- Revert: schemas/agentic_db_app_public/tables/habit_chunks/columns/chunk_index/column


ALTER TABLE "agentic_db_app_public".habit_chunks 
  DROP COLUMN chunk_index RESTRICT;


