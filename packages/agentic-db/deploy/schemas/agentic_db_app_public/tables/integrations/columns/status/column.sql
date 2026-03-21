-- Deploy: schemas/agentic_db_app_public/tables/integrations/columns/status/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/integrations/table
-- requires: schemas/agentic_db_app_public/tables/integrations/columns/config/column


ALTER TABLE agentic_db_app_public.integrations 
  ADD COLUMN status text;

