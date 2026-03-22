-- Revert: schemas/agentic_db_app_public/tables/habits/columns/is_active/column


ALTER TABLE agentic_db_app_public.habits 
  DROP COLUMN is_active RESTRICT;


