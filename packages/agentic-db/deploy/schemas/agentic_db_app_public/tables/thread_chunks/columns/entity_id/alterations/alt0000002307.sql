-- Deploy: schemas/agentic_db_app_public/tables/thread_chunks/columns/entity_id/alterations/alt0000002307
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/thread_chunks/table
-- requires: schemas/agentic_db_app_public/tables/thread_chunks/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/chat_message_chunks/columns/embedding/column


ALTER TABLE "agentic_db_app_public".thread_chunks 
  ALTER COLUMN entity_id SET NOT NULL;

