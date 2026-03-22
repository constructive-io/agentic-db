-- Revert: schemas/agentic_db_app_public/tables/runtime_metrics/columns/entity_id/alterations/alt0000001366


ALTER TABLE "agentic_db_app_public".runtime_metrics 
  ALTER COLUMN entity_id DROP NOT NULL;


