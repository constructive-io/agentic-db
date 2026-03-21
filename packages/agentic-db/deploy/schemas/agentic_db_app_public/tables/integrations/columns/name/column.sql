-- Deploy: schemas/agentic_db_app_public/tables/integrations/columns/name/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/integrations/table
-- requires: schemas/agentic_db_app_public/tables/integrations/columns/updated_at/alterations/alt0000004492


ALTER TABLE agentic_db_app_public.integrations 
  ADD COLUMN name text;

