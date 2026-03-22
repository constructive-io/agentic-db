-- Deploy: schemas/agentic_db_app_public/tables/conversation_chunks/indexes/conversation_chunks_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversation_chunks/table
-- requires: schemas/agentic_db_app_public/tables/conversation_chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/conversation_chunks/columns/embedding_text/column


CREATE INDEX conversation_chunks_embedding_hnsw_idx ON "agentic_db_app_public".conversation_chunks USING hnsw ( embedding vector_cosine_ops );

