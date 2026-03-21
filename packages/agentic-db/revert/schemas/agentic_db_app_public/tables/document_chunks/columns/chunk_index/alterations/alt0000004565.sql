-- Revert: schemas/agentic_db_app_public/tables/document_chunks/columns/chunk_index/alterations/alt0000004565


ALTER TABLE agentic_db_app_public.document_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


