-- Deploy: schemas/agentic_db_app_public/tables/documents/columns/is_read/alterations/alt0000004483
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents/table
-- requires: schemas/agentic_db_app_public/tables/documents/columns/is_read/column
-- requires: schemas/agentic_db_app_public/tables/documents/columns/source_type/column



ALTER TABLE agentic_db_app_public.documents 
    ALTER COLUMN is_read SET DEFAULT false;

