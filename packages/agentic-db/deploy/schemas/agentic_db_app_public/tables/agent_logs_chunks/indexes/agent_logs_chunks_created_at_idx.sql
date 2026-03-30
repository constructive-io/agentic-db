-- Deploy: schemas/agentic_db_app_public/tables/agent_logs_chunks/indexes/agent_logs_chunks_created_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_logs_chunks/table
-- requires: schemas/agentic_db_app_public/tables/agent_logs_chunks/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


CREATE INDEX agent_logs_chunks_created_at_idx ON "agentic_db_app_public".agent_logs_chunks ( created_at );

