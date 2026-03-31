-- Revert: schemas/agentic_db_app_public/tables/runtime_artifacts/columns/artifact_type/column


ALTER TABLE agentic_db_app_public.runtime_artifacts 
  DROP COLUMN artifact_type RESTRICT;


