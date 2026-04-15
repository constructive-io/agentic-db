-- Revert: schemas/agentic_db_storage_public/tables/buckets/columns/allowed_mime_types/column


ALTER TABLE agentic_db_storage_public.buckets 
  DROP COLUMN allowed_mime_types RESTRICT;


