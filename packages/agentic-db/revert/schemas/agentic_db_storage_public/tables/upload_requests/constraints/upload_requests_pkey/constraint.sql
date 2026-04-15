-- Revert: schemas/agentic_db_storage_public/tables/upload_requests/constraints/upload_requests_pkey/constraint


ALTER TABLE agentic_db_storage_public.upload_requests 
  DROP CONSTRAINT upload_requests_pkey;


