-- Deploy: schemas/agentic_db_app_public/tables/agents/indexes/agents_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/agents/columns/embedding/column


CREATE INDEX agents_embedding_hnsw_idx ON agentic_db_app_public.agents USING hnsw ( embedding vector_cosine_ops );

