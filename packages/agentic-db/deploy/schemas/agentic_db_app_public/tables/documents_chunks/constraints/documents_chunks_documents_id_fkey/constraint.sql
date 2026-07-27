-- Deploy: schemas/agentic_db_app_public/tables/documents_chunks/constraints/documents_chunks_documents_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents/table
-- requires: schemas/agentic_db_app_public/tables/documents_chunks/table


ALTER TABLE agentic_db_app_public.documents_chunks 
  ADD CONSTRAINT documents_chunks_documents_id_fkey 
    FOREIGN KEY(documents_id) 
    REFERENCES agentic_db_app_public.documents (id) 
    ON DELETE CASCADE;

