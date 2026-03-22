-- Revert: schemas/agentic_db_app_public/tables/code_chunks/columns/chunk_index/column


ALTER TABLE agentic_db_app_public.code_chunks 
  DROP COLUMN chunk_index RESTRICT;


