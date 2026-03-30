-- Revert: schemas/agentic_db_app_public/tables/agents_chunks/columns/chunk_index/alterations/alt0000001213


ALTER TABLE "agentic_db_app_public".agents_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


