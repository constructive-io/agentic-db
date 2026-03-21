-- Revert: schemas/agentic_db_app_public/tables/templates/columns/name/column


ALTER TABLE agentic_db_app_public.templates 
  DROP COLUMN name RESTRICT;


