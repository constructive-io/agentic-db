-- Revert: schemas/agentic_db_storage_public/tables/files/columns/description/column


ALTER TABLE agentic_db_storage_public.files 
  DROP COLUMN description RESTRICT;


