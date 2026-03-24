-- Deploy: schemas/agentic_db_app_public/tables/agent_logs_chunks/columns/chunk_index/alterations/alt0000001264
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_logs_chunks/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx
-- requires: schemas/agentic_db_app_public/tables/agent_logs_chunks/columns/chunk_index/column



ALTER TABLE "agentic_db_app_public".agent_logs_chunks 
    ALTER COLUMN chunk_index SET DEFAULT 0;

