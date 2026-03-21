-- Revert: schemas/agentic_db_app_public/tables/integrations/columns/created_at/column


ALTER TABLE agentic_db_app_public.integrations 
  DROP COLUMN created_at RESTRICT;


