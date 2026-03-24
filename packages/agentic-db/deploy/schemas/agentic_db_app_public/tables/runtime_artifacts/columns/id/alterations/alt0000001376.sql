-- Deploy: schemas/agentic_db_app_public/tables/runtime_artifacts/columns/id/alterations/alt0000001376
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_artifacts/table
-- requires: schemas/agentic_db_app_public/tables/runtime_artifacts/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


ALTER TABLE "agentic_db_app_public".runtime_artifacts 
  ALTER COLUMN id SET NOT NULL;

