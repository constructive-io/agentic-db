-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/context_relations/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/context_relations/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_spawns/columns/completed_at/column


GRANT UPDATE ON "agent-os-1773551593867-bac64076-app-public".context_relations TO authenticated;

