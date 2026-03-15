-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/integrations/columns/id/alterations/alt0000003032
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/integrations/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/integrations/columns/id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/documents/columns/search_tsv/column



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".integrations 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

