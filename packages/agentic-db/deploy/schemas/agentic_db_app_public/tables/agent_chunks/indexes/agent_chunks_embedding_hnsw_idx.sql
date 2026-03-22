-- Deploy: schemas/agentic_db_app_public/tables/agent_chunks/indexes/agent_chunks_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_chunks/table
-- requires: schemas/agentic_db_app_public/tables/agent_chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/agent_chunks/columns/embedding_text/column


CREATE INDEX agent_chunks_embedding_hnsw_idx ON agentic_db_app_public.agent_chunks USING hnsw ( embedding vector_cosine_ops );

