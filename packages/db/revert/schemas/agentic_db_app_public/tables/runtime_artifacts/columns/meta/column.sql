-- Revert: schemas/agentic_db_app_public/tables/runtime_artifacts/columns/meta/column


ALTER TABLE "agentic_db_app_public".runtime_artifacts 
  DROP COLUMN meta RESTRICT;


