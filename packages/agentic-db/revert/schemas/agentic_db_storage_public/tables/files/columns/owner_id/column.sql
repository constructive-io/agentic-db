-- Revert: schemas/agentic_db_storage_public/tables/files/columns/owner_id/column


ALTER TABLE agentic_db_storage_public.files 
  DROP COLUMN owner_id RESTRICT;


