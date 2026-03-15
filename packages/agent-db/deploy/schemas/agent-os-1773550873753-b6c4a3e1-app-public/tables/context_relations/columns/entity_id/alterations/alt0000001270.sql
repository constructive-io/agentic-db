-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/context_relations/columns/entity_id/alterations/alt0000001270
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/context_relations/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_spawns/columns/completed_at/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/context_relations/columns/entity_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".context_relations 
  ALTER COLUMN entity_id SET NOT NULL;

