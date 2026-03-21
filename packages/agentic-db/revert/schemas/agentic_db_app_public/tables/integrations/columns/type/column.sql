-- Revert: schemas/agentic_db_app_public/tables/integrations/columns/type/column


ALTER TABLE agentic_db_app_public.integrations 
  DROP COLUMN type RESTRICT;


