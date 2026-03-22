-- Revert: schemas/agentic_db_app_public/tables/habit_chunks/columns/embedding_stale/alterations/alt0000002909




ALTER TABLE agentic_db_app_public.habit_chunks 
    ALTER COLUMN embedding_stale DROP DEFAULT;



