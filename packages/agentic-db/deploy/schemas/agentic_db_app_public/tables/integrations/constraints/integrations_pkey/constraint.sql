-- Deploy: schemas/agentic_db_app_public/tables/integrations/constraints/integrations_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/integrations/table
-- requires: schemas/agentic_db_app_public/tables/documents/columns/search_tsv/column


ALTER TABLE agentic_db_app_public.integrations 
  ADD CONSTRAINT integrations_pkey PRIMARY KEY (id);

