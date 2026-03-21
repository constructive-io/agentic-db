-- Revert: schemas/agentic_db_app_public/tables/prompt_chunks/columns/chunk_index/column


ALTER TABLE agentic_db_app_public.prompt_chunks 
  DROP COLUMN chunk_index RESTRICT;


