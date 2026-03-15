-- Deploy: schemas/agent_db_app_public/tables/goals/indexes/goals_embedding_hnsw_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/goals/table
-- requires: schemas/agent_db_app_public/tables/goals/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/skills/indexes/skills_embedding_hnsw_idx


CREATE INDEX goals_embedding_hnsw_idx ON "agent_db_app_public".goals USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

