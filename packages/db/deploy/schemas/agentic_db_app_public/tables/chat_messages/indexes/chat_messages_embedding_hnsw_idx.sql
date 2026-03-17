-- Deploy: schemas/agentic_db_app_public/tables/chat_messages/indexes/chat_messages_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chat_messages/table
-- requires: schemas/agentic_db_app_public/tables/chat_messages/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/chats/indexes/chats_embedding_hnsw_idx


CREATE INDEX chat_messages_embedding_hnsw_idx ON "agentic_db_app_public".chat_messages USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

