-- Revert: schemas/agentic_db_app_public/tables/project_chunks/columns/chunk_index/alterations/alt0000002417


ALTER TABLE "agentic_db_app_public".project_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


