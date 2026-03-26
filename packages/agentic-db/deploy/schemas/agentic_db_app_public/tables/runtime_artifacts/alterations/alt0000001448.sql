-- Deploy: schemas/agentic_db_app_public/tables/runtime_artifacts/alterations/alt0000001448
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_artifacts/table
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx


ALTER TABLE "agentic_db_app_public".runtime_artifacts 
  DISABLE ROW LEVEL SECURITY;

