-- Deploy: schemas/agentic_db_app_public/tables/message_chunks/indexes/message_chunks_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/message_chunks/table
-- requires: schemas/agentic_db_app_public/tables/message_chunks/columns/embedding_text/column


CREATE INDEX message_chunks_embedding_text_bm25_idx ON "agentic_db_app_public".message_chunks USING bm25 ( embedding_text ) WITH ( text_config = english );

