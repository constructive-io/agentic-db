-- Deploy: schemas/agentic_db_app_public/tables/documents/columns/title/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents/table
-- requires: schemas/agentic_db_app_public/tables/documents/columns/updated_at/alterations/alt0000004481


ALTER TABLE agentic_db_app_public.documents 
  ADD COLUMN title text;

