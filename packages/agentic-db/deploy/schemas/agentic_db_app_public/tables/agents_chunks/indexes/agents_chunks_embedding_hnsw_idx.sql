-- Deploy: schemas/agentic_db_app_public/tables/agents_chunks/indexes/agents_chunks_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents_chunks/table
-- requires: schemas/agentic_db_app_public/tables/agents_chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


CREATE INDEX agents_chunks_embedding_hnsw_idx ON agentic_db_app_public.agents_chunks USING hnsw ( embedding vector_cosine_ops );

