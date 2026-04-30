-- Deploy: schemas/agentic_db_app_public/tables/documents/columns/created_at/alterations/alt0000000766
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents/table
-- requires: schemas/agentic_db_app_public/tables/documents/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx



ALTER TABLE agentic_db_app_public.documents 
    ALTER COLUMN created_at SET DEFAULT now();

