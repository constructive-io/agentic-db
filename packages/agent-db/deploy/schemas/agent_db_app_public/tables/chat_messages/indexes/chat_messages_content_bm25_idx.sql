-- Deploy: schemas/agent_db_app_public/tables/chat_messages/indexes/chat_messages_content_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chat_messages/table
-- requires: schemas/agent_db_app_public/tables/chat_messages/columns/content/column
-- requires: schemas/agent_db_app_public/tables/documents/indexes/documents_content_bm25_idx


CREATE INDEX chat_messages_content_bm25_idx ON "agent_db_app_public".chat_messages USING bm25 ( content ) WITH ( text_config = english );

