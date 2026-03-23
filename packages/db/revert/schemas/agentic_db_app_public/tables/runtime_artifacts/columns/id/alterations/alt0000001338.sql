-- Revert: schemas/agentic_db_app_public/tables/runtime_artifacts/columns/id/alterations/alt0000001338


ALTER TABLE "agentic_db_app_public".runtime_artifacts 
  ALTER COLUMN id DROP NOT NULL;


