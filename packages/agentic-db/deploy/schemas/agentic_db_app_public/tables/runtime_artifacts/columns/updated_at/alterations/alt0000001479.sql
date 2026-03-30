-- Deploy: schemas/agentic_db_app_public/tables/runtime_artifacts/columns/updated_at/alterations/alt0000001479
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_artifacts/table
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx
-- requires: schemas/agentic_db_app_public/tables/runtime_artifacts/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".runtime_artifacts 
  ALTER COLUMN updated_at SET NOT NULL;

