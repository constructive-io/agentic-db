-- Revert: schemas/agentic_db_app_public/tables/runtime_artifacts/columns/created_at/column


ALTER TABLE agentic_db_app_public.runtime_artifacts 
  DROP COLUMN created_at RESTRICT;


