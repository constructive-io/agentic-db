-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/integrations/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/integrations/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/documents/columns/search_tsv/column


GRANT SELECT ON "agent-os-1773551593867-bac64076-app-public".integrations TO authenticated;

