-- Deploy: schemas/agent_db_app_public/tables/calendar_events/indexes/calendar_events_embedding_hnsw_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/calendar_events/table
-- requires: schemas/agent_db_app_public/tables/calendar_events/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/messages/indexes/messages_embedding_hnsw_idx


CREATE INDEX calendar_events_embedding_hnsw_idx ON "agent_db_app_public".calendar_events USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

