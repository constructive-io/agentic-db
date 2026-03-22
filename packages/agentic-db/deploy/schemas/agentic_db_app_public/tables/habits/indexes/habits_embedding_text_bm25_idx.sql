-- Deploy: schemas/agentic_db_app_public/tables/habits/indexes/habits_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits/table
-- requires: schemas/agentic_db_app_public/tables/habits/columns/embedding_text/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


CREATE INDEX habits_embedding_text_bm25_idx ON "agentic_db_app_public".habits USING bm25 ( embedding_text ) WITH ( text_config = english );

