-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/integrations/columns/id/alterations/alt0000001423
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/integrations/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/integrations/columns/id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/documents/columns/search_tsv/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".integrations 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

