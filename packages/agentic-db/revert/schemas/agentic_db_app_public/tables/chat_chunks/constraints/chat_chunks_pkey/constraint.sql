-- Revert: schemas/agentic_db_app_public/tables/chat_chunks/constraints/chat_chunks_pkey/constraint


ALTER TABLE "agentic_db_app_public".chat_chunks 
  DROP CONSTRAINT chat_chunks_pkey;


