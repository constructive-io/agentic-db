-- Revert: schemas/agentic_db_app_public/tables/runtime_artifacts/columns/entity_id/alterations/alt0000001356


ALTER TABLE "agentic_db_app_public".runtime_artifacts 
  ALTER COLUMN entity_id DROP NOT NULL;


