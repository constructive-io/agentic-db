-- Revert: schemas/agentic_db_app_public/tables/templates/columns/created_at/column


ALTER TABLE agentic_db_app_public.templates 
  DROP COLUMN created_at RESTRICT;


