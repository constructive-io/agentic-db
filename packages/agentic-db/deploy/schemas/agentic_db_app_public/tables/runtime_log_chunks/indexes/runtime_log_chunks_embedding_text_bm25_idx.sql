-- Deploy: schemas/agentic_db_app_public/tables/runtime_log_chunks/indexes/runtime_log_chunks_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_log_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/runtime_log_chunks/columns/embedding_text/column


CREATE INDEX runtime_log_chunks_embedding_text_bm25_idx ON "agentic_db_app_public".runtime_log_chunks USING bm25 ( embedding_text ) WITH ( text_config = english );

