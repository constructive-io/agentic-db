-- Deploy: schemas/agentic_db_app_public/tables/documents/columns/saved_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents/table
-- requires: schemas/agentic_db_app_public/tables/documents/columns/is_read/alterations/alt0000004483


ALTER TABLE agentic_db_app_public.documents 
  ADD COLUMN saved_at timestamptz;

