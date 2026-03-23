-- Revert: schemas/agentic_db_app_public/tables/runtime_artifacts/constraints/runtime_artifacts_entity_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".runtime_artifacts 
  DROP CONSTRAINT runtime_artifacts_entity_id_fkey;


