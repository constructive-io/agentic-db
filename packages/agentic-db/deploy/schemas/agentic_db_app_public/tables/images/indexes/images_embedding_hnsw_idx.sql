-- Deploy: schemas/agentic_db_app_public/tables/images/indexes/images_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/images/table
-- requires: schemas/agentic_db_app_public/tables/images/columns/embedding/column


CREATE INDEX images_embedding_hnsw_idx ON "agentic_db_app_public".images USING hnsw ( embedding vector_cosine_ops );

