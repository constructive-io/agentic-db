-- Deploy: schemas/agentic_db_app_public/tables/activity_log_chunks/indexes/activity_log_chunks_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_log_chunks/table
-- requires: schemas/agentic_db_app_public/tables/activity_log_chunks/columns/embedding_text/column
-- requires: schemas/agentic_db_app_public/tables/activity_log_chunks/indexes/activity_log_chunks_embedding_hnsw_idx


CREATE INDEX activity_log_chunks_embedding_text_bm25_idx ON "agentic_db_app_public".activity_log_chunks USING bm25 ( embedding_text ) WITH ( text_config = english );

