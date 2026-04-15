-- Revert: schemas/agentic_db_storage_public/tables/buckets/columns/max_file_size/column


ALTER TABLE agentic_db_storage_public.buckets 
  DROP COLUMN max_file_size RESTRICT;


