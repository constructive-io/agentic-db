-- Revert: schemas/agentic_db_app_public/tables/integrations/columns/updated_at/column


ALTER TABLE agentic_db_app_public.integrations 
  DROP COLUMN updated_at RESTRICT;


