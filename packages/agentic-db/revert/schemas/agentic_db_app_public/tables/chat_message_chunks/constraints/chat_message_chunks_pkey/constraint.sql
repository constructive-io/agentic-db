-- Revert: schemas/agentic_db_app_public/tables/chat_message_chunks/constraints/chat_message_chunks_pkey/constraint


ALTER TABLE "agentic_db_app_public".chat_message_chunks 
  DROP CONSTRAINT chat_message_chunks_pkey;


