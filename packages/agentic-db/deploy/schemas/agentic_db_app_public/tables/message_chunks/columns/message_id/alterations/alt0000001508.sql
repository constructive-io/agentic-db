-- Deploy: schemas/agentic_db_app_public/tables/message_chunks/columns/message_id/alterations/alt0000001508
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/message_chunks/table
-- requires: schemas/agentic_db_app_public/tables/message_chunks/columns/message_id/column
-- requires: schemas/agentic_db_app_public/tables/conversation_chunks/indexes/conversation_chunks_conversation_id_idx


ALTER TABLE "agentic_db_app_public".message_chunks 
  ALTER COLUMN message_id SET NOT NULL;

