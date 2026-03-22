-- Revert: schemas/agentic_db_app_public/tables/interaction_chunks/columns/chunk_index/alterations/alt0000001952


ALTER TABLE "agentic_db_app_public".interaction_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


