-- Revert: schemas/agentic_db_app_public/tables/integrations/columns/credentials_ref/column


ALTER TABLE agentic_db_app_public.integrations 
  DROP COLUMN credentials_ref RESTRICT;


