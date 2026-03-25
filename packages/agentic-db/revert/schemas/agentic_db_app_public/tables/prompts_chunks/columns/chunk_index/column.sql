-- Revert: schemas/agentic_db_app_public/tables/prompts_chunks/columns/chunk_index/column


ALTER TABLE "agentic_db_app_public".prompts_chunks 
  DROP COLUMN chunk_index RESTRICT;


