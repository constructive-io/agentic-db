-- Deploy: schemas/agent_db_app_public/tables/interactions/indexes/interactions_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/interactions/table
-- requires: schemas/agent_db_app_public/tables/interactions/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/notes/indexes/notes_embedding_hnsw_idx


CREATE INDEX interactions_embedding_hnsw_idx ON "agent_db_app_public".interactions USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

