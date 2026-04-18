-- Revert: schemas/agentic_db_app_public/tables/habits/columns/updated_at/alterations/alt0000001136


ALTER TABLE agentic_db_app_public.habits 
  ALTER COLUMN updated_at DROP NOT NULL;


