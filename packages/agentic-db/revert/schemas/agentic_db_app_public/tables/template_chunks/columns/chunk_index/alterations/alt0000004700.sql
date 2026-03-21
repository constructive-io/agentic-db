-- Revert: schemas/agentic_db_app_public/tables/template_chunks/columns/chunk_index/alterations/alt0000004700


ALTER TABLE agentic_db_app_public.template_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


