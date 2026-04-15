-- Revert: schemas/agentic_db_storage_public/tables/upload_requests/policies/enable_row_level_security


ALTER TABLE agentic_db_storage_public.upload_requests 
  DISABLE ROW LEVEL SECURITY;


