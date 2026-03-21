-- Revert: schemas/agentic_db_app_public/tables/prompt_chunks/columns/chunk_index/alterations/alt0000002087


ALTER TABLE "agentic_db_app_public".prompt_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


