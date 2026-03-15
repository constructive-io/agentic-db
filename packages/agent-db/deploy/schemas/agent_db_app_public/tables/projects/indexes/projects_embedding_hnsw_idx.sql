-- Deploy: schemas/agent_db_app_public/tables/projects/indexes/projects_embedding_hnsw_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/projects/table
-- requires: schemas/agent_db_app_public/tables/projects/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/tools/indexes/tools_embedding_hnsw_idx


CREATE INDEX projects_embedding_hnsw_idx ON "agent_db_app_public".projects USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

