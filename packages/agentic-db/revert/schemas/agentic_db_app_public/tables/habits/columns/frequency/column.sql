-- Revert: schemas/agentic_db_app_public/tables/habits/columns/frequency/column


ALTER TABLE agentic_db_app_public.habits 
  DROP COLUMN frequency RESTRICT;


