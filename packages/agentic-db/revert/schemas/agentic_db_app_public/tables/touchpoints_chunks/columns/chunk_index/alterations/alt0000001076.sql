-- Revert: schemas/agentic_db_app_public/tables/touchpoints_chunks/columns/chunk_index/alterations/alt0000001076


ALTER TABLE "agentic_db_app_public".touchpoints_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


