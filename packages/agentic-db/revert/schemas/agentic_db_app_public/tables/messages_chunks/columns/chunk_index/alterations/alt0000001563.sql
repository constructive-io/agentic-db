-- Revert: schemas/agentic_db_app_public/tables/messages_chunks/columns/chunk_index/alterations/alt0000001563


ALTER TABLE "agentic_db_app_public".messages_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


