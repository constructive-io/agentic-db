-- Revert: schemas/agentic_db_app_public/tables/habit_chunks/columns/updated_at/alterations/alt0000006384


ALTER TABLE agentic_db_app_public.habit_chunks 
  ALTER COLUMN updated_at DROP NOT NULL;


