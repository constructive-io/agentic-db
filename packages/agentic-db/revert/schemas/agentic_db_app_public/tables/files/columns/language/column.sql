-- Revert: schemas/agentic_db_app_public/tables/files/columns/language/column


ALTER TABLE agentic_db_app_public.files 
  DROP COLUMN language RESTRICT;


