-- Revert: schemas/agentic_db_app_public/tables/codebas_chunks/columns/chunk_index/column


ALTER TABLE agentic_db_app_public.codebas_chunks 
  DROP COLUMN chunk_index RESTRICT;


