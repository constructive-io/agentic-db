-- Revert: schemas/agentic_db_app_public/tables/list_chunks/columns/chunk_index/alterations/alt0000002694


ALTER TABLE "agentic_db_app_public".list_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


