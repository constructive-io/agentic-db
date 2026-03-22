-- Revert: schemas/agentic_db_app_public/tables/runtime_artifacts/columns/size_bytes/column


ALTER TABLE agentic_db_app_public.runtime_artifacts 
  DROP COLUMN size_bytes RESTRICT;


