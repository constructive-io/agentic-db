-- Revert: schemas/agentic_db_app_public/tables/expenses_chunks/columns/chunk_index/alterations/alt0000001405


ALTER TABLE "agentic_db_app_public".expenses_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


