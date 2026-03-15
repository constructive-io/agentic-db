-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/context_relations/columns/entity_id/alterations/alt0000001270
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/context_relations/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agent_spawns/columns/completed_at/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/context_relations/columns/entity_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".context_relations 
  ALTER COLUMN entity_id SET NOT NULL;

