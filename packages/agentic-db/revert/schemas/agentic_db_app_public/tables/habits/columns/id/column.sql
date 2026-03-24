-- Revert: schemas/agentic_db_app_public/tables/habits/columns/id/column


ALTER TABLE agentic_db_app_public.habits 
  DROP COLUMN id RESTRICT;


