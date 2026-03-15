-- Deploy: schemas/agent_db_app_public/tables/integrations/columns/id/alterations/alt0000001423
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/integrations/table
-- requires: schemas/agent_db_app_public/tables/integrations/columns/id/column
-- requires: schemas/agent_db_app_public/tables/documents/columns/search_tsv/column



ALTER TABLE agent_db_app_public.integrations 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

