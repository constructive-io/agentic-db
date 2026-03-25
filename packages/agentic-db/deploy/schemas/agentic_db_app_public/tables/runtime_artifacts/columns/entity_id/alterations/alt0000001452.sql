-- Deploy: schemas/agentic_db_app_public/tables/runtime_artifacts/columns/entity_id/alterations/alt0000001452
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_artifacts/table
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx
-- requires: schemas/agentic_db_app_public/tables/runtime_artifacts/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".runtime_artifacts 
  ALTER COLUMN entity_id SET NOT NULL;

