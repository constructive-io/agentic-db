-- Revert: schemas/agentic_db_storage_public/tables/files/columns/is_public/alterations/alt0000012891




ALTER TABLE agentic_db_storage_public.files 
    ALTER COLUMN is_public DROP DEFAULT;



