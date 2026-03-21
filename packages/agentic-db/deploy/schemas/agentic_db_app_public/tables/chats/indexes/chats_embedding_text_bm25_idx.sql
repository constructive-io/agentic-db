-- Deploy: schemas/agentic_db_app_public/tables/chats/indexes/chats_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chats/table
-- requires: schemas/agentic_db_app_public/tables/chats/columns/embedding_text/column
-- requires: schemas/agentic_db_app_public/tables/chats/indexes/chats_embedding_hnsw_idx


CREATE INDEX chats_embedding_text_bm25_idx ON "agentic_db_app_public".chats USING bm25 ( embedding_text ) WITH ( text_config = english );

