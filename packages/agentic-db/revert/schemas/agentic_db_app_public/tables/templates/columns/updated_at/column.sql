-- Revert: schemas/agentic_db_app_public/tables/templates/columns/updated_at/column


ALTER TABLE agentic_db_app_public.templates 
  DROP COLUMN updated_at RESTRICT;


