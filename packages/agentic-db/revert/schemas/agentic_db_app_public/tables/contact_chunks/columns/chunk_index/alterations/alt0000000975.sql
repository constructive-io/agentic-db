-- Revert: schemas/agentic_db_app_public/tables/contact_chunks/columns/chunk_index/alterations/alt0000000975


ALTER TABLE "agentic_db_app_public".contact_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


