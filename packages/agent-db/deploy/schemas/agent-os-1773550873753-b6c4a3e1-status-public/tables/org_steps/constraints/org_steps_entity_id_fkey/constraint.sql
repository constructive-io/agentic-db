-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/org_steps/constraints/org_steps_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/org_steps/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".org_steps 
  ADD CONSTRAINT org_steps_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent-os-1773550873753-b6c4a3e1-users-public".users (id) 
    ON DELETE CASCADE;

