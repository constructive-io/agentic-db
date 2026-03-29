-- Deploy: schemas/agentic_db_app_public/tables/activity_logs/indexes/activity_logs_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_logs/table
-- requires: schemas/agentic_db_app_public/tables/activity_logs/columns/embedding_text/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


CREATE INDEX activity_logs_embedding_text_bm25_idx ON agentic_db_app_public.activity_logs USING bm25 ( embedding_text ) WITH ( text_config = english );

