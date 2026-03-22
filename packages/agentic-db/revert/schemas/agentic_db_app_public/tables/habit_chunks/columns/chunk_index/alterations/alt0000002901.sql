-- Revert: schemas/agentic_db_app_public/tables/habit_chunks/columns/chunk_index/alterations/alt0000002901


ALTER TABLE agentic_db_app_public.habit_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


