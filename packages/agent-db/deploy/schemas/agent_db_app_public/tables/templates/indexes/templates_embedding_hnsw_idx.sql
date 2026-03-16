-- Deploy: schemas/agent_db_app_public/tables/templates/indexes/templates_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/templates/table
-- requires: schemas/agent_db_app_public/tables/templates/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/recipes/indexes/recipes_embedding_hnsw_idx


CREATE INDEX templates_embedding_hnsw_idx ON "agent_db_app_public".templates USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

