-- Deploy: schemas/agentic_db_app_public/tables/repositories/indexes/repositories_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/repositories/table
-- requires: schemas/agentic_db_app_public/tables/repositories/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/repository_chunks/indexes/repository_chunks_repository_id_idx


CREATE INDEX repositories_embedding_hnsw_idx ON "agentic_db_app_public".repositories USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

