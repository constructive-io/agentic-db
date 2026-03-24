-- Deploy: schemas/agentic_db_app_public/tables/messages_chunks/indexes/messages_chunks_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/messages_chunks/columns/embedding/column


CREATE INDEX messages_chunks_embedding_hnsw_idx ON "agentic_db_app_public".messages_chunks USING hnsw ( embedding vector_cosine_ops );

