-- Deploy: schemas/agent_db_app_public/tables/threads/indexes/threads_embedding_hnsw_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/threads/table
-- requires: schemas/agent_db_app_public/tables/threads/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/chat_messages/indexes/chat_messages_embedding_hnsw_idx


CREATE INDEX threads_embedding_hnsw_idx ON "agent_db_app_public".threads USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

