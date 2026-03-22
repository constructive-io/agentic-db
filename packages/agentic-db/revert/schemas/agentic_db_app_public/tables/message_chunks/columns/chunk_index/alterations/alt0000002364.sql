-- Revert: schemas/agentic_db_app_public/tables/message_chunks/columns/chunk_index/alterations/alt0000002364


ALTER TABLE "agentic_db_app_public".message_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


