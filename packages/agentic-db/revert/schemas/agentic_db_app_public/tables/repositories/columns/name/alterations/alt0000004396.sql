-- Revert: schemas/agentic_db_app_public/tables/repositories/columns/name/alterations/alt0000004396


ALTER TABLE agentic_db_app_public.repositories 
  ALTER COLUMN name DROP NOT NULL;


