-- Revert: schemas/agentic_db_app_public/tables/habits/columns/tags/column


ALTER TABLE agentic_db_app_public.habits 
  DROP COLUMN tags RESTRICT;


