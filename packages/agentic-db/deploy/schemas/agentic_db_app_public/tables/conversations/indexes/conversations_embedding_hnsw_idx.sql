-- Deploy: schemas/agentic_db_app_public/tables/conversations/indexes/conversations_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/conversations/columns/embedding/column


CREATE INDEX conversations_embedding_hnsw_idx ON "agentic_db_app_public".conversations USING hnsw ( embedding vector_cosine_ops );

