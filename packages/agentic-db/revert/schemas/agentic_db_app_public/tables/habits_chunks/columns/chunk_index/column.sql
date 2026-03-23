-- Revert: schemas/agentic_db_app_public/tables/habits_chunks/columns/chunk_index/column


ALTER TABLE agentic_db_app_public.habits_chunks 
  DROP COLUMN chunk_index RESTRICT;


