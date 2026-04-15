-- Deploy: schemas/agentic_db_storage_public/tables/upload_requests/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/upload_requests/table


ALTER TABLE agentic_db_storage_public.upload_requests 
  ENABLE ROW LEVEL SECURITY;

