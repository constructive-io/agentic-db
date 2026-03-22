-- Deploy: schemas/agentic_db_app_public/tables/places/indexes/places_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/places/table
-- requires: schemas/agentic_db_app_public/tables/places/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/places/columns/embedding_text/column


CREATE INDEX places_embedding_hnsw_idx ON "agentic_db_app_public".places USING hnsw ( embedding vector_cosine_ops );

