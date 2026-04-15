-- Revert: schemas/agentic_db_storage_public/tables/upload_requests/columns/ip_address/column


ALTER TABLE agentic_db_storage_public.upload_requests 
  DROP COLUMN ip_address RESTRICT;


