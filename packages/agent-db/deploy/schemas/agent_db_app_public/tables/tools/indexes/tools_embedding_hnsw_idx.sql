-- Deploy: schemas/agent_db_app_public/tables/tools/indexes/tools_embedding_hnsw_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tools/table
-- requires: schemas/agent_db_app_public/tables/tools/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/blueprints/indexes/blueprints_embedding_hnsw_idx


CREATE INDEX tools_embedding_hnsw_idx ON "agent_db_app_public".tools USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

