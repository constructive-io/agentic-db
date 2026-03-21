-- Revert: schemas/agentic_db_app_public/tables/integrations/columns/provider/alterations/alt0000004494


ALTER TABLE agentic_db_app_public.integrations 
  ALTER COLUMN provider DROP NOT NULL;


