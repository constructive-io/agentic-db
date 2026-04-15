-- Revert: schemas/agentic_db_storage_public/tables/upload_requests/constraints/upload_requests_owner_id_fkey/constraint


ALTER TABLE agentic_db_storage_public.upload_requests 
  DROP CONSTRAINT upload_requests_owner_id_fkey;


