-- Deploy: schemas/agentic_db_app_public/tables/agent_logs/indexes/agent_logs_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_logs/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx
-- requires: schemas/agentic_db_app_public/tables/agent_logs/columns/embedding_text/column


CREATE INDEX agent_logs_embedding_text_bm25_idx ON agentic_db_app_public.agent_logs USING bm25 ( embedding_text ) WITH ( text_config = english );

