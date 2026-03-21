-- Revert: schemas/agentic_db_app_public/tables/idea_chunks/columns/chunk_index/alterations/alt0000002674


ALTER TABLE "agentic_db_app_public".idea_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


