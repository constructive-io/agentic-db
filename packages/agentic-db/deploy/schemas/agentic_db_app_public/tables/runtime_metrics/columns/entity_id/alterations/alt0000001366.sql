-- Deploy: schemas/agentic_db_app_public/tables/runtime_metrics/columns/entity_id/alterations/alt0000001366
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/table
-- requires: schemas/agentic_db_app_public/tables/runtime_metrics/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/runtime_artifacts/columns/size_bytes/column


ALTER TABLE "agentic_db_app_public".runtime_metrics 
  ALTER COLUMN entity_id SET NOT NULL;

