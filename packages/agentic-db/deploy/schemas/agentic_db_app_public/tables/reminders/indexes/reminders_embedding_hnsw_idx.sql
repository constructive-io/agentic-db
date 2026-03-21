-- Deploy: schemas/agentic_db_app_public/tables/reminders/indexes/reminders_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/reminders/table
-- requires: schemas/agentic_db_app_public/tables/reminders/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/ideas/indexes/ideas_embedding_text_bm25_idx


CREATE INDEX reminders_embedding_hnsw_idx ON "agentic_db_app_public".reminders USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

