-- Deploy: schemas/agentic_db_app_public/tables/integrations/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/integrations/table
-- requires: schemas/agentic_db_app_public/tables/documents/columns/search_tsv/column


ALTER TABLE agentic_db_app_public.integrations 
  ENABLE ROW LEVEL SECURITY;

