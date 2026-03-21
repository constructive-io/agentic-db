-- Deploy: schemas/agentic_db_app_public/tables/thread_chunks/indexes/thread_chunks_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/thread_chunks/table
-- requires: schemas/agentic_db_app_public/tables/thread_chunks/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/chat_message_chunks/columns/embedding/column


CREATE INDEX thread_chunks_entity_id_idx ON agentic_db_app_public.thread_chunks USING BTREE ( entity_id );

