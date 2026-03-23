-- Revert: schemas/agentic_db_app_public/tables/habits/columns/created_at/column


ALTER TABLE agentic_db_app_public.habits 
  DROP COLUMN created_at RESTRICT;


