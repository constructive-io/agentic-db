-- Deploy: schemas/agentic_db_app_public/tables/documents/columns/content/alterations/alt0000000001
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents/table
-- requires: schemas/agentic_db_app_public/tables/documents/columns/content/column


ALTER TABLE agentic_db_app_public.documents 
  ALTER COLUMN content SET NOT NULL;

