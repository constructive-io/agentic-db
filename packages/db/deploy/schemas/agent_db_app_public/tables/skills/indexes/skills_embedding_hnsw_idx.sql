-- Deploy: schemas/agent_db_app_public/tables/skills/indexes/skills_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skills/table
-- requires: schemas/agent_db_app_public/tables/skills/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/memories/indexes/memories_embedding_hnsw_idx


CREATE INDEX skills_embedding_hnsw_idx ON "agent_db_app_public".skills USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

