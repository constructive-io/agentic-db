-- Deploy: schemas/agent_db_app_public/tables/venues/indexes/venues_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venues/table
-- requires: schemas/agent_db_app_public/tables/venues/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/events/indexes/events_embedding_hnsw_idx


CREATE INDEX venues_embedding_hnsw_idx ON agent_db_app_public.venues USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

