-- Revert: schemas/agentic_db_app_public/tables/integrations/columns/config/column


ALTER TABLE agentic_db_app_public.integrations 
  DROP COLUMN config RESTRICT;


