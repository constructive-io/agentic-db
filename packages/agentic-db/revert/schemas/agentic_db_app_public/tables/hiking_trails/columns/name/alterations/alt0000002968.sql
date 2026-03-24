-- Revert: schemas/agentic_db_app_public/tables/hiking_trails/columns/name/alterations/alt0000002968


ALTER TABLE agentic_db_app_public.hiking_trails 
  ALTER COLUMN name DROP NOT NULL;


