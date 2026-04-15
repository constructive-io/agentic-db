-- Revert: schemas/agentic_db_storage_public/tables/files/constraints/files_bucket_id_fkey/constraint


ALTER TABLE agentic_db_storage_public.files 
  DROP CONSTRAINT files_bucket_id_fkey;


