-- Deploy: schemas/agent_db_app_public/tables/integrations/columns/entity_id/alterations/alt0000001424
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/integrations/table
-- requires: schemas/agent_db_app_public/tables/documents/columns/search_tsv/column
-- requires: schemas/agent_db_app_public/tables/integrations/columns/entity_id/column


ALTER TABLE agent_db_app_public.integrations 
  ALTER COLUMN entity_id SET NOT NULL;

