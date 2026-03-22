-- Revert: schemas/agentic_db_app_public/tables/message_chunks/constraints/message_chunks_pkey/constraint


ALTER TABLE "agentic_db_app_public".message_chunks 
  DROP CONSTRAINT message_chunks_pkey;


