-- Revert: schemas/agentic_db_app_public/tables/chat_message_chunks/columns/entity_id/alterations/alt0000002297


ALTER TABLE "agentic_db_app_public".chat_message_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


