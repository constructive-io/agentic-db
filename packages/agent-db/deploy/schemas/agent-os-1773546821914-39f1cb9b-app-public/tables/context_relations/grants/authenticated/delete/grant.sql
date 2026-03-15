-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/context_relations/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/context_relations/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agent_spawns/columns/completed_at/column


GRANT DELETE ON "agent-os-1773546821914-39f1cb9b-app-public".context_relations TO authenticated;

