-- Revert: schemas/agentic_db_app_public/tables/habits/columns/embedding/column


ALTER TABLE agentic_db_app_public.habits 
  DROP COLUMN embedding RESTRICT;


