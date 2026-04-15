-- Revert: schemas/agentic_db_storage_public/tables/files/columns/bucket_id/column


ALTER TABLE agentic_db_storage_public.files 
  DROP COLUMN bucket_id RESTRICT;


