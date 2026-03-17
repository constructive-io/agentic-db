-- Deploy: schemas/agentic_db_app_public/tables/integrations/columns/id/alterations/alt0000001388
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/integrations/table
-- requires: schemas/agentic_db_app_public/tables/integrations/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/documents/columns/search_tsv/column


ALTER TABLE "agentic_db_app_public".integrations 
  ALTER COLUMN id SET NOT NULL;

