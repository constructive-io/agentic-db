-- Deploy: schemas/agent_db_app_public/tables/events/indexes/events_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/events/table
-- requires: schemas/agent_db_app_public/tables/events/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/deals/indexes/deals_embedding_hnsw_idx


CREATE INDEX events_embedding_hnsw_idx ON agent_db_app_public.events USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

