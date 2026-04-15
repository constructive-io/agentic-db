-- Deploy: schemas/agentic_db_storage_public/tables/buckets/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/buckets/table


ALTER TABLE agentic_db_storage_public.buckets 
  ENABLE ROW LEVEL SECURITY;

