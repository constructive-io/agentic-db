-- Deploy: schemas/agentic_db_app_public/tables/chats/indexes/chats_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chats/table
-- requires: schemas/agentic_db_app_public/tables/chats/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/sessions/indexes/sessions_embedding_text_bm25_idx


CREATE INDEX chats_embedding_hnsw_idx ON agentic_db_app_public.chats USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

