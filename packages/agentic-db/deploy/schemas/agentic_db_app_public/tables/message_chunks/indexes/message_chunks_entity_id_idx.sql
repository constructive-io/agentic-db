-- Deploy: schemas/agentic_db_app_public/tables/message_chunks/indexes/message_chunks_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/message_chunks/table
-- requires: schemas/agentic_db_app_public/tables/message_chunks/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/conversation_chunks/triggers/conversation_chunks_enqueue_embedding_update_tg


CREATE INDEX message_chunks_entity_id_idx ON "agentic_db_app_public".message_chunks USING BTREE ( entity_id );

