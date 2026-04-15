-- Revert: schemas/agentic_db_app_public/tables/runtime_artifacts/columns/name/alterations/alt0000015538


ALTER TABLE agentic_db_app_public.runtime_artifacts 
  ALTER COLUMN name DROP NOT NULL;


