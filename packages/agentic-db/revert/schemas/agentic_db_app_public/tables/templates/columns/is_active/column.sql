-- Revert: schemas/agentic_db_app_public/tables/templates/columns/is_active/column


ALTER TABLE agentic_db_app_public.templates 
  DROP COLUMN is_active RESTRICT;


