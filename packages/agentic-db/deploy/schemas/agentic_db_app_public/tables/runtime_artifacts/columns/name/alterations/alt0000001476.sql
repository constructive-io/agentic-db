-- Deploy: schemas/agentic_db_app_public/tables/runtime_artifacts/columns/name/alterations/alt0000001476
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_artifacts/table
-- requires: schemas/agentic_db_app_public/tables/runtime_artifacts/columns/name/column
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx


ALTER TABLE "agentic_db_app_public".runtime_artifacts 
  ALTER COLUMN name SET NOT NULL;

