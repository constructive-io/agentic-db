-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/event_links/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/event_links/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/company_links/columns/embedding/column


GRANT SELECT ON "agent-os-1773551593867-bac64076-app-public".event_links TO authenticated;

