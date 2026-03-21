-- Deploy: schemas/agentic_db_app_public/tables/threads/indexes/threads_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/threads/table
-- requires: schemas/agentic_db_app_public/tables/threads/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/chat_messages/indexes/chat_messages_embedding_text_bm25_idx


CREATE INDEX threads_embedding_hnsw_idx ON agentic_db_app_public.threads USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

