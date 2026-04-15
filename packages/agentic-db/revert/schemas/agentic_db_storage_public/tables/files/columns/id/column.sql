-- Revert: schemas/agentic_db_storage_public/tables/files/columns/id/column


ALTER TABLE agentic_db_storage_public.files 
  DROP COLUMN id RESTRICT;


