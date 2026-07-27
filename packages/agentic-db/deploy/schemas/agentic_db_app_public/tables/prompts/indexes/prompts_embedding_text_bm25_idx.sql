-- Deploy: schemas/agentic_db_app_public/tables/prompts/indexes/prompts_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts/table
-- requires: schemas/agentic_db_app_public/tables/prompts/columns/embedding_text/column


CREATE INDEX prompts_embedding_text_bm25_idx ON agentic_db_app_public.prompts USING bm25 ( embedding_text ) WITH ( text_config = english );

