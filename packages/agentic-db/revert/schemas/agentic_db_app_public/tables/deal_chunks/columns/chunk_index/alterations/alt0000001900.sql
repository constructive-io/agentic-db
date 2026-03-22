-- Revert: schemas/agentic_db_app_public/tables/deal_chunks/columns/chunk_index/alterations/alt0000001900


ALTER TABLE "agentic_db_app_public".deal_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


