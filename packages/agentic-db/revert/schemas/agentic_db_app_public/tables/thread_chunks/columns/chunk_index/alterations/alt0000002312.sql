-- Revert: schemas/agentic_db_app_public/tables/thread_chunks/columns/chunk_index/alterations/alt0000002312


ALTER TABLE "agentic_db_app_public".thread_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


