-- Deploy: schemas/agentic_db_app_public/tables/documents_chunks/columns/updated_at/alterations/alt0000000001
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents_chunks/table
-- requires: schemas/agentic_db_app_public/tables/documents_chunks/columns/updated_at/column


ALTER TABLE agentic_db_app_public.documents_chunks 
  ALTER COLUMN updated_at SET DEFAULT now();

