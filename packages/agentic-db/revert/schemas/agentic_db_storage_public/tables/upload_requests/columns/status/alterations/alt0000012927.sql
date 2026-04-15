-- Revert: schemas/agentic_db_storage_public/tables/upload_requests/columns/status/alterations/alt0000012927




ALTER TABLE agentic_db_storage_public.upload_requests 
    ALTER COLUMN status DROP DEFAULT;



