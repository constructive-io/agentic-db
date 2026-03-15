-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/processes/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/processes/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/blueprints/columns/embedding/column


GRANT SELECT ON "agent-os-1773551593867-bac64076-app-public".processes TO authenticated;

