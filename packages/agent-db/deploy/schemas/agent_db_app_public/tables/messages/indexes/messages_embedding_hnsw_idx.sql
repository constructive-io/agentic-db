-- Deploy: schemas/agent_db_app_public/tables/messages/indexes/messages_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/messages/table
-- requires: schemas/agent_db_app_public/tables/messages/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/chunks/indexes/chunks_embedding_hnsw_idx


CREATE INDEX messages_embedding_hnsw_idx ON agent_db_app_public.messages USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

