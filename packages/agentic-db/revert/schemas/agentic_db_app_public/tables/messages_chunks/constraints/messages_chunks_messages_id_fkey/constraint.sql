-- Revert: schemas/agentic_db_app_public/tables/messages_chunks/constraints/messages_chunks_messages_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".messages_chunks 
  DROP CONSTRAINT messages_chunks_messages_id_fkey;


