-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/skills/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/skills/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/memories/columns/embedding/column


GRANT SELECT ON "agent-os-1773551593867-bac64076-app-public".skills TO authenticated;

