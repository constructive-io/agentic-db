-- Deploy: schemas/agent_db_app_public/tables/blueprints/indexes/blueprints_embedding_hnsw_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/blueprints/table
-- requires: schemas/agent_db_app_public/tables/blueprints/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/threads/indexes/threads_embedding_hnsw_idx


CREATE INDEX blueprints_embedding_hnsw_idx ON "agent_db_app_public".blueprints USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

