-- Revert: schemas/agentic_db_app_public/tables/integrations/columns/provider/column


ALTER TABLE agentic_db_app_public.integrations 
  DROP COLUMN provider RESTRICT;


