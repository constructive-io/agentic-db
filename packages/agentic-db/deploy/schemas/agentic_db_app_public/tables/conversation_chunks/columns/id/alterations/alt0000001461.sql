-- Deploy: schemas/agentic_db_app_public/tables/conversation_chunks/columns/id/alterations/alt0000001461
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversation_chunks/table
-- requires: schemas/agentic_db_app_public/tables/conversation_chunks/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/messages/triggers/messages_enqueue_embedding_update_tg



ALTER TABLE "agentic_db_app_public".conversation_chunks 
    ALTER COLUMN id SET DEFAULT uuidv7();

