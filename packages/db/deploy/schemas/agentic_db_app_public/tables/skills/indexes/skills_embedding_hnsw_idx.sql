-- Deploy: schemas/agentic_db_app_public/tables/skills/indexes/skills_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx
-- requires: schemas/agentic_db_app_public/tables/skills/columns/embedding/column


CREATE INDEX skills_embedding_hnsw_idx ON "agentic_db_app_public".skills USING hnsw ( embedding vector_cosine_ops );

