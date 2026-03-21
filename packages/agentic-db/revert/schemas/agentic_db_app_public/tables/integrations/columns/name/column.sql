-- Revert: schemas/agentic_db_app_public/tables/integrations/columns/name/column


ALTER TABLE agentic_db_app_public.integrations 
  DROP COLUMN name RESTRICT;


