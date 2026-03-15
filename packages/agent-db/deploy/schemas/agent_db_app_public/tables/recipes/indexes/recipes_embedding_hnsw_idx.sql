-- Deploy: schemas/agent_db_app_public/tables/recipes/indexes/recipes_embedding_hnsw_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/recipes/table
-- requires: schemas/agent_db_app_public/tables/recipes/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/lists/indexes/lists_embedding_hnsw_idx


CREATE INDEX recipes_embedding_hnsw_idx ON "agent_db_app_public".recipes USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

