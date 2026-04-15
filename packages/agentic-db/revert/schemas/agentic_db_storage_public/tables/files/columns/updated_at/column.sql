-- Revert: schemas/agentic_db_storage_public/tables/files/columns/updated_at/column


ALTER TABLE agentic_db_storage_public.files 
  DROP COLUMN updated_at RESTRICT;


