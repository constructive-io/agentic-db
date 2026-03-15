-- Deploy: schemas/agent_db_app_public/tables/sessions/indexes/sessions_embedding_hnsw_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/sessions/table
-- requires: schemas/agent_db_app_public/tables/sessions/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/agents/indexes/agents_embedding_hnsw_idx


CREATE INDEX sessions_embedding_hnsw_idx ON agent_db_app_public.sessions USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

