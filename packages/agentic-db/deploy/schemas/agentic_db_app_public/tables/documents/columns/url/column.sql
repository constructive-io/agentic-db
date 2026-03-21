-- Deploy: schemas/agentic_db_app_public/tables/documents/columns/url/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents/table
-- requires: schemas/agentic_db_app_public/tables/documents/columns/title/alterations/alt0000004482


ALTER TABLE agentic_db_app_public.documents 
  ADD COLUMN url text;

