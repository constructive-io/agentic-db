-- Deploy: schemas/agentic_db_app_public/tables/runtime_logs_chunks/indexes/runtime_logs_chunks_created_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_logs_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/runtime_logs_chunks/columns/created_at/column


CREATE INDEX runtime_logs_chunks_created_at_idx ON agentic_db_app_public.runtime_logs_chunks ( created_at );

