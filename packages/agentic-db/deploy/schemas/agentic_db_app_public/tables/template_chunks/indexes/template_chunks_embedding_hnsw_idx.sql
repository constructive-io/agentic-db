-- Deploy: schemas/agentic_db_app_public/tables/template_chunks/indexes/template_chunks_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/template_chunks/table
-- requires: schemas/agentic_db_app_public/tables/template_chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/recipe_chunks/indexes/recipe_chunks_chunk_index_idx


CREATE INDEX template_chunks_embedding_hnsw_idx ON "agentic_db_app_public".template_chunks USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

