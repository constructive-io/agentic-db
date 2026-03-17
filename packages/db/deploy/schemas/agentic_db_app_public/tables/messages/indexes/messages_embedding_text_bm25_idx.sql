-- Deploy: schemas/agentic_db_app_public/tables/messages/indexes/messages_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table
-- requires: schemas/agentic_db_app_public/tables/messages/columns/embedding_text/column
-- requires: schemas/agentic_db_app_public/tables/chunks/indexes/chunks_embedding_text_bm25_idx


CREATE INDEX messages_embedding_text_bm25_idx ON "agentic_db_app_public".messages USING bm25 ( embedding_text ) WITH ( text_config = english );

