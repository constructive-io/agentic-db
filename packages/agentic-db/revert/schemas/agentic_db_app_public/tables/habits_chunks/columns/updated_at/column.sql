-- Revert: schemas/agentic_db_app_public/tables/habits_chunks/columns/updated_at/column


ALTER TABLE agentic_db_app_public.habits_chunks 
  DROP COLUMN updated_at RESTRICT;


