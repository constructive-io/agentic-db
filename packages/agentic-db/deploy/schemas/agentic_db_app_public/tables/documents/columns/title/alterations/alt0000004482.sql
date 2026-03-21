-- Deploy: schemas/agentic_db_app_public/tables/documents/columns/title/alterations/alt0000004482
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents/table
-- requires: schemas/agentic_db_app_public/tables/documents/columns/title/column
-- requires: schemas/agentic_db_app_public/tables/documents/columns/updated_at/alterations/alt0000004481


ALTER TABLE agentic_db_app_public.documents 
  ALTER COLUMN title SET NOT NULL;

