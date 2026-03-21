-- Revert: schemas/agentic_db_app_public/tables/template_chunks/columns/chunk_index/column


ALTER TABLE agentic_db_app_public.template_chunks 
  DROP COLUMN chunk_index RESTRICT;


