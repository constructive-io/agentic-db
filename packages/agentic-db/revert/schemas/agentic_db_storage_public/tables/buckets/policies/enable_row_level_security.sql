-- Revert: schemas/agentic_db_storage_public/tables/buckets/policies/enable_row_level_security


ALTER TABLE agentic_db_storage_public.buckets 
  DISABLE ROW LEVEL SECURITY;


