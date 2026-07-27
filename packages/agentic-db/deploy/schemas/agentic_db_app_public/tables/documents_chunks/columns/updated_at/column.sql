-- Deploy: schemas/agentic_db_app_public/tables/documents_chunks/columns/updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents_chunks/table


ALTER TABLE agentic_db_app_public.documents_chunks 
  ADD COLUMN updated_at timestamptz;

