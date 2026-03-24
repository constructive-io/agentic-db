-- Deploy: schemas/agentic_db_app_public/tables/runtime_artifacts/columns/name/alterations/alt0000001380
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_artifacts/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/runtime_artifacts/columns/name/column


ALTER TABLE "agentic_db_app_public".runtime_artifacts 
  ALTER COLUMN name SET NOT NULL;

