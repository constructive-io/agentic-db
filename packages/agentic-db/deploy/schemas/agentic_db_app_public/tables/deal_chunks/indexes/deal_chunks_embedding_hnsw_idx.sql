-- Deploy: schemas/agentic_db_app_public/tables/deal_chunks/indexes/deal_chunks_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deal_chunks/table
-- requires: schemas/agentic_db_app_public/tables/deal_chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/deal_chunks/columns/embedding_text/column


CREATE INDEX deal_chunks_embedding_hnsw_idx ON agentic_db_app_public.deal_chunks USING hnsw ( embedding vector_cosine_ops );

