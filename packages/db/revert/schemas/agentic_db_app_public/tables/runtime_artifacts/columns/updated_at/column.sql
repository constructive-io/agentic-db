-- Revert: schemas/agentic_db_app_public/tables/runtime_artifacts/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".runtime_artifacts 
  DROP COLUMN updated_at RESTRICT;


