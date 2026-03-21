-- Revert: schemas/agentic_db_app_public/tables/templates/columns/updated_at/alterations/alt0000004647


ALTER TABLE agentic_db_app_public.templates 
  ALTER COLUMN updated_at DROP NOT NULL;


