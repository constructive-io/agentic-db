-- Revert: schemas/agentic_db_storage_public/tables/upload_requests/columns/user_agent/column


ALTER TABLE agentic_db_storage_public.upload_requests 
  DROP COLUMN user_agent RESTRICT;


