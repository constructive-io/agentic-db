-- Deploy: schemas/agentic_db_app_public/tables/conversation_chunks/columns/entity_id/alterations/alt0000001462
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversation_chunks/table
-- requires: schemas/agentic_db_app_public/tables/conversation_chunks/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/messages/triggers/messages_enqueue_embedding_update_tg


ALTER TABLE "agentic_db_app_public".conversation_chunks 
  ALTER COLUMN entity_id SET NOT NULL;

