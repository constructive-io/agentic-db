-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/context_relations/columns/id/alterations/alt0000001269
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/context_relations/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/context_relations/columns/id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_spawns/columns/completed_at/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".context_relations 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

