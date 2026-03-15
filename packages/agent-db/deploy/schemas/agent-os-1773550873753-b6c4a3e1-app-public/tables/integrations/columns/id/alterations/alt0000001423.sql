-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/integrations/columns/id/alterations/alt0000001423
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/integrations/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/integrations/columns/id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/documents/columns/search_tsv/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".integrations 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

