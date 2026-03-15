-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_steps/constraints/org_steps_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_steps/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".org_steps 
  ADD CONSTRAINT org_steps_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent-os-1773546821914-39f1cb9b-users-public".users (id) 
    ON DELETE CASCADE;

