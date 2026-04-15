-- Deploy: schemas/agentic_db_storage_public/tables/files/columns/is_public/alterations/alt0000012891
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/files/table
-- requires: schemas/agentic_db_storage_public/tables/files/columns/is_public/column



ALTER TABLE agentic_db_storage_public.files 
    ALTER COLUMN is_public SET DEFAULT false;

