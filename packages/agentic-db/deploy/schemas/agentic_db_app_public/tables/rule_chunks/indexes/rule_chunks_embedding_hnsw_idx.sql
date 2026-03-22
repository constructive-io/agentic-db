-- Deploy: schemas/agentic_db_app_public/tables/rule_chunks/indexes/rule_chunks_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rule_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx
-- requires: schemas/agentic_db_app_public/tables/rule_chunks/columns/embedding/column


CREATE INDEX rule_chunks_embedding_hnsw_idx ON "agentic_db_app_public".rule_chunks USING hnsw ( embedding vector_cosine_ops );

