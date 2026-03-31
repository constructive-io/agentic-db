-- Revert: schemas/agentic_db_app_public/tables/prompts_chunks/columns/chunk_index/alterations/alt0000001388


ALTER TABLE "agentic_db_app_public".prompts_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


