-- Revert: schemas/agentic_db_app_public/tables/habit_chunks/columns/created_at/alterations/alt0000006383




ALTER TABLE agentic_db_app_public.habit_chunks 
    ALTER COLUMN created_at DROP DEFAULT;



