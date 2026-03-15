-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/context_relations/columns/id/alterations/alt0000002878
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/context_relations/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/context_relations/columns/id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_spawns/columns/completed_at/column



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".context_relations 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

