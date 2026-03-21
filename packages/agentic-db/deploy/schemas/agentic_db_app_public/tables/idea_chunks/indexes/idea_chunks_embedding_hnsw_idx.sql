-- Deploy: schemas/agentic_db_app_public/tables/idea_chunks/indexes/idea_chunks_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/idea_chunks/table
-- requires: schemas/agentic_db_app_public/tables/idea_chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/templates/indexes/templates_embedding_text_bm25_idx


CREATE INDEX idea_chunks_embedding_hnsw_idx ON agentic_db_app_public.idea_chunks USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

