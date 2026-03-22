-- Deploy: schemas/agentic_db_app_public/tables/conversations/indexes/conversations_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations/table
-- requires: schemas/agentic_db_app_public/tables/conversations/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/runtime_log_chunks/triggers/runtime_log_chunks_enqueue_embedding_update_tg


CREATE INDEX conversations_entity_id_idx ON "agentic_db_app_public".conversations USING BTREE ( entity_id );

