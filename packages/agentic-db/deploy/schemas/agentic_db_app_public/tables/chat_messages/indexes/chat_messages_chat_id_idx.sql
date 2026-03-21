-- Deploy: schemas/agentic_db_app_public/tables/chat_messages/indexes/chat_messages_chat_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chat_messages/table
-- requires: schemas/agentic_db_app_public/tables/chat_messages/columns/chat_id/column
-- requires: schemas/agentic_db_app_public/tables/execution_log/indexes/execution_logs_session_id_idx


CREATE INDEX chat_messages_chat_id_idx ON agentic_db_app_public.chat_messages USING BTREE ( chat_id );

