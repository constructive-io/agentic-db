-- Revert: schemas/agentic_db_storage_public/tables/files/policies/enable_row_level_security


ALTER TABLE agentic_db_storage_public.files 
  DISABLE ROW LEVEL SECURITY;


