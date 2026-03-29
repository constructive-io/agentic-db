-- Revert: schemas/agentic_db_app_public/tables/habits/columns/name/alterations/alt0000005801


ALTER TABLE agentic_db_app_public.habits 
  ALTER COLUMN name DROP NOT NULL;


