-- Revert: schemas/agentic_db_app_public/tables/templates/columns/type/column


ALTER TABLE agentic_db_app_public.templates 
  DROP COLUMN type RESTRICT;


