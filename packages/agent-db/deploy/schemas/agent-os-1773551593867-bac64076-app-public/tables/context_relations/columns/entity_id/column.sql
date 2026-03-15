-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/context_relations/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/context_relations/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_spawns/columns/completed_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".context_relations 
  ADD COLUMN entity_id uuid;

