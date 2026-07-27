-- Deploy: schemas/agentic_db_app_public/tables/documents/columns/id/alterations/alt0000000002
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents/table
-- requires: schemas/agentic_db_app_public/tables/documents/columns/id/column


ALTER TABLE agentic_db_app_public.documents 
  ALTER COLUMN id SET DEFAULT uuidv7();

