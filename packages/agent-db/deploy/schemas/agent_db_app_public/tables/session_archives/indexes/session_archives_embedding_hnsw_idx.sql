-- Deploy: schemas/agent_db_app_public/tables/session_archives/indexes/session_archives_embedding_hnsw_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/session_archives/table
-- requires: schemas/agent_db_app_public/tables/session_archives/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/templates/indexes/templates_embedding_hnsw_idx


CREATE INDEX session_archives_embedding_hnsw_idx ON agent_db_app_public.session_archives USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

