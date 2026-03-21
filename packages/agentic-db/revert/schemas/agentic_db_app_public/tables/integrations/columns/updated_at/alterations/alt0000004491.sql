-- Revert: schemas/agentic_db_app_public/tables/integrations/columns/updated_at/alterations/alt0000004491


ALTER TABLE agentic_db_app_public.integrations 
  ALTER COLUMN updated_at DROP NOT NULL;


