-- Deploy: schemas/agentic_db_app_public/tables/chat_messages/indexes/chat_messages_content_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chat_messages/table
-- requires: schemas/agentic_db_app_public/tables/chat_messages/columns/content/column
-- requires: schemas/agentic_db_app_public/tables/activity_log/indexes/activity_logs_embedding_text_bm25_idx


CREATE INDEX chat_messages_content_bm25_idx ON agentic_db_app_public.chat_messages USING bm25 ( content ) WITH ( text_config = english );

