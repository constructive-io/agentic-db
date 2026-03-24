-- Deploy: schemas/agentic_db_app_public/tables/agent_logs/indexes/agent_logs_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_logs/table
-- requires: schemas/agentic_db_app_public/tables/agent_logs/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


CREATE INDEX agent_logs_embedding_hnsw_idx ON agentic_db_app_public.agent_logs USING hnsw ( embedding vector_cosine_ops );

