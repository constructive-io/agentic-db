-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/event_links/columns/id/alterations/alt0000002576
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/event_links/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/event_links/columns/id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/company_links/columns/embedding/column



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".event_links 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

