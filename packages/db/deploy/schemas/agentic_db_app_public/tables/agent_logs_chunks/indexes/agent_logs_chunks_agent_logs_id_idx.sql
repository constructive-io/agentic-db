-- Deploy: schemas/agentic_db_app_public/tables/agent_logs_chunks/indexes/agent_logs_chunks_agent_logs_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_logs_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx
-- requires: schemas/agentic_db_app_public/tables/agent_logs_chunks/columns/agent_logs_id/column


CREATE INDEX agent_logs_chunks_agent_logs_id_idx ON "agentic_db_app_public".agent_logs_chunks USING BTREE ( agent_logs_id );

