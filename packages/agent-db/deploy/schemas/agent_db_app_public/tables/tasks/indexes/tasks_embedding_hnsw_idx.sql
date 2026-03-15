-- Deploy: schemas/agent_db_app_public/tables/tasks/indexes/tasks_embedding_hnsw_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tasks/table
-- requires: schemas/agent_db_app_public/tables/tasks/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/interactions/indexes/interactions_embedding_hnsw_idx


CREATE INDEX tasks_embedding_hnsw_idx ON "agent_db_app_public".tasks USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

