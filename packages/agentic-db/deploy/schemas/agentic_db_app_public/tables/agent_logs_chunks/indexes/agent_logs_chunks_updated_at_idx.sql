-- Deploy: schemas/agentic_db_app_public/tables/agent_logs_chunks/indexes/agent_logs_chunks_updated_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_logs_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx
-- requires: schemas/agentic_db_app_public/tables/agent_logs_chunks/columns/updated_at/column


CREATE INDEX agent_logs_chunks_updated_at_idx ON agentic_db_app_public.agent_logs_chunks ( updated_at );

