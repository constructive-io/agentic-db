-- Deploy: schemas/agent_db_app_public/tables/ideas/indexes/ideas_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/ideas/table
-- requires: schemas/agent_db_app_public/tables/ideas/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/trips/indexes/trips_embedding_hnsw_idx


CREATE INDEX ideas_embedding_hnsw_idx ON agent_db_app_public.ideas USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

