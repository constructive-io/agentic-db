-- Deploy: schemas/agentic_db_app_public/tables/runtime_logs_chunks/columns/metadata/alterations/alt0000001370
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_logs_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/runtime_logs_chunks/columns/metadata/column



ALTER TABLE "agentic_db_app_public".runtime_logs_chunks 
    ALTER COLUMN metadata SET DEFAULT '{}'::jsonb;

