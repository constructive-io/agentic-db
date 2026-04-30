-- Revert: schemas/agentic_db_app_public/tables/documents_chunks/constraints/documents_chunks_pkey/constraint


ALTER TABLE agentic_db_app_public.documents_chunks 
  DROP CONSTRAINT documents_chunks_pkey;


