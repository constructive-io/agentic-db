-- Revert: schemas/agentic_db_app_public/tables/integrations/columns/name/alterations/alt0000004493


ALTER TABLE agentic_db_app_public.integrations 
  ALTER COLUMN name DROP NOT NULL;


