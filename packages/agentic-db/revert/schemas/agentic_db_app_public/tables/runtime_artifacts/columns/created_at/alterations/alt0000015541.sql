-- Revert: schemas/agentic_db_app_public/tables/runtime_artifacts/columns/created_at/alterations/alt0000015541


ALTER TABLE agentic_db_app_public.runtime_artifacts 
  ALTER COLUMN created_at DROP NOT NULL;


