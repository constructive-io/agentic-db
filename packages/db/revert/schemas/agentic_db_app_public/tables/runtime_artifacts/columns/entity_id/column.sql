-- Revert: schemas/agentic_db_app_public/tables/runtime_artifacts/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".runtime_artifacts 
  DROP COLUMN entity_id RESTRICT;


