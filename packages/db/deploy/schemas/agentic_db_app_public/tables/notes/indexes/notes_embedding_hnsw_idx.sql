-- Deploy: schemas/agentic_db_app_public/tables/notes/indexes/notes_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table
-- requires: schemas/agentic_db_app_public/tables/notes/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/venues/indexes/venues_embedding_hnsw_idx


CREATE INDEX notes_embedding_hnsw_idx ON "agentic_db_app_public".notes USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

