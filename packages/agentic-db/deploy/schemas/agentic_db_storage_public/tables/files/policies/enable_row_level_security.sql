-- Deploy: schemas/agentic_db_storage_public/tables/files/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/files/table


ALTER TABLE agentic_db_storage_public.files 
  ENABLE ROW LEVEL SECURITY;

