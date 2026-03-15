-- Deploy: schemas/agent_db_app_public/tables/documents/indexes/documents_embedding_hnsw_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/documents/table
-- requires: schemas/agent_db_app_public/tables/documents/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/calendar_events/indexes/calendar_events_embedding_hnsw_idx


CREATE INDEX documents_embedding_hnsw_idx ON agent_db_app_public.documents USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

