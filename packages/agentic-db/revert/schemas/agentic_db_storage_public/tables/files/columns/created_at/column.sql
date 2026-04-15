-- Revert: schemas/agentic_db_storage_public/tables/files/columns/created_at/column


ALTER TABLE agentic_db_storage_public.files 
  DROP COLUMN created_at RESTRICT;


