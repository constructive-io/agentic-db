-- Deploy: schemas/agentic_db_app_public/tables/documents/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents/table


ALTER TABLE agentic_db_app_public.documents 
  ADD COLUMN created_at timestamptz;

