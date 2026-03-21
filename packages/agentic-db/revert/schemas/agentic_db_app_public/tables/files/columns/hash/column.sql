-- Revert: schemas/agentic_db_app_public/tables/files/columns/hash/column


ALTER TABLE agentic_db_app_public.files 
  DROP COLUMN hash RESTRICT;


