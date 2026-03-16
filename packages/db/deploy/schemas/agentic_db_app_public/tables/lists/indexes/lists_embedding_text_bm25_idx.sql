-- Deploy: schemas/agentic_db_app_public/tables/lists/indexes/lists_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/lists/table
-- requires: schemas/agentic_db_app_public/tables/lists/columns/embedding_text/column
-- requires: schemas/agentic_db_app_public/tables/reminders/indexes/reminders_embedding_text_bm25_idx


CREATE INDEX lists_embedding_text_bm25_idx ON "agentic_db_app_public".lists USING bm25 ( embedding_text ) WITH ( text_config = english );

