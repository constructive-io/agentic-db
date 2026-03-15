-- Deploy: schemas/agent_db_app_public/tables/chat_messages/indexes/chat_messages_embedding_text_bm25_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chat_messages/table
-- requires: schemas/agent_db_app_public/tables/chat_messages/columns/embedding_text/column
-- requires: schemas/agent_db_app_public/tables/chats/indexes/chats_embedding_text_bm25_idx


CREATE INDEX chat_messages_embedding_text_bm25_idx ON "agent_db_app_public".chat_messages USING bm25 ( embedding_text ) WITH ( text_config = english );

