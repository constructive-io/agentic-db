-- Deploy: schemas/agentic_db_app_public/tables/conversation_chunks/indexes/conversation_chunks_conversation_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversation_chunks/table
-- requires: schemas/agentic_db_app_public/tables/conversation_chunks/columns/conversation_id/column
-- requires: schemas/agentic_db_app_public/tables/runtime_log_chunks/indexes/runtime_log_chunks_runtime_log_id_idx


CREATE INDEX conversation_chunks_conversation_id_idx ON "agentic_db_app_public".conversation_chunks USING BTREE ( conversation_id );

