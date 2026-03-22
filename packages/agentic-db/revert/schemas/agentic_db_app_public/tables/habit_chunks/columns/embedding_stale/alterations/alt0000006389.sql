-- Revert: schemas/agentic_db_app_public/tables/habit_chunks/columns/embedding_stale/alterations/alt0000006389


ALTER TABLE agentic_db_app_public.habit_chunks 
  ALTER COLUMN embedding_stale DROP NOT NULL;


