-- Deploy: schemas/agent_db_app_public/tables/activity_log/indexes/activity_logs_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/activity_log/table
-- requires: schemas/agent_db_app_public/tables/activity_log/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/session_archives/indexes/session_archives_embedding_hnsw_idx


CREATE INDEX activity_logs_embedding_hnsw_idx ON "agent_db_app_public".activity_log USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

