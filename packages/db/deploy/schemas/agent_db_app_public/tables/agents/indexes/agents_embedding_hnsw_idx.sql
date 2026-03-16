-- Deploy: schemas/agent_db_app_public/tables/agents/indexes/agents_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agents/table
-- requires: schemas/agent_db_app_public/tables/agents/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/prompts/indexes/prompts_embedding_hnsw_idx


CREATE INDEX agents_embedding_hnsw_idx ON "agent_db_app_public".agents USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

