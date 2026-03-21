-- Deploy: schemas/agentic_db_app_public/tables/chat_chunks/indexes/chat_chunks_chat_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chat_chunks/table
-- requires: schemas/agentic_db_app_public/tables/chat_chunks/columns/chat_id/column
-- requires: schemas/agentic_db_app_public/tables/session_chunks/indexes/session_chunks_session_id_idx


CREATE INDEX chat_chunks_chat_id_idx ON "agentic_db_app_public".chat_chunks USING BTREE ( chat_id );

