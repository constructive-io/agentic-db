-- Revert: schemas/agentic_db_app_public/tables/deals_chunks/columns/chunk_index/alterations/alt0000000927


ALTER TABLE "agentic_db_app_public".deals_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


