-- Deploy: schemas/agent_db_app_public/tables/trips/indexes/trips_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/trips/table
-- requires: schemas/agent_db_app_public/tables/trips/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/documents/indexes/documents_embedding_hnsw_idx


CREATE INDEX trips_embedding_hnsw_idx ON "agent_db_app_public".trips USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

