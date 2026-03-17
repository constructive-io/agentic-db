-- Deploy: schemas/agentic_db_app_public/tables/prompts/indexes/prompts_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts/table
-- requires: schemas/agentic_db_app_public/tables/prompts/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/goals/indexes/goals_embedding_hnsw_idx


CREATE INDEX prompts_embedding_hnsw_idx ON "agentic_db_app_public".prompts USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

