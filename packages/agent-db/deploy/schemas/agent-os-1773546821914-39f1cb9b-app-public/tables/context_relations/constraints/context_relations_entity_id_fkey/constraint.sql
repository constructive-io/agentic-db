-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/context_relations/constraints/context_relations_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/context_relations/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agent_spawns/columns/completed_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".context_relations 
  ADD CONSTRAINT context_relations_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent-os-1773546821914-39f1cb9b-users-public".users (id) 
    ON DELETE CASCADE;

