-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/context_relations/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/context_relations/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_spawns/columns/completed_at/column


GRANT DELETE ON "agent-os-1773550873753-b6c4a3e1-app-public".context_relations TO authenticated;

