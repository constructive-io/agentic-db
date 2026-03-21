-- Deploy: schemas/agentic_db_app_public/tables/agents/indexes/agents_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/agents/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/activity_log_chunks/indexes/activity_log_chunks_activity_log_id_idx


CREATE INDEX agents_embedding_hnsw_idx ON agentic_db_app_public.agents USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

