-- Deploy: schemas/agentic_db_app_public/tables/integrations/columns/provider/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/integrations/table
-- requires: schemas/agentic_db_app_public/tables/integrations/columns/name/alterations/alt0000004493


ALTER TABLE agentic_db_app_public.integrations 
  ADD COLUMN provider text;

