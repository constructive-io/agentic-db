-- Deploy: schemas/agentic_db_app_public/tables/runtime_logs/columns/embedding_stale/alterations/alt0000001323
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_logs/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/runtime_logs/columns/embedding_stale/column


ALTER TABLE "agentic_db_app_public".runtime_logs 
  ALTER COLUMN embedding_stale SET NOT NULL;

