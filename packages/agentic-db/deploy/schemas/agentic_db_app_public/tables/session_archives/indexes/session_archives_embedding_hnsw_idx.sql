-- Deploy: schemas/agentic_db_app_public/tables/session_archives/indexes/session_archives_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/session_archives/table
-- requires: schemas/agentic_db_app_public/tables/session_archives/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/tools/indexes/tools_embedding_text_bm25_idx


CREATE INDEX session_archives_embedding_hnsw_idx ON "agentic_db_app_public".session_archives USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

