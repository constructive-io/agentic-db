-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/processes/constraints/processes_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/processes/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/blueprints/columns/embedding/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".processes 
  ADD CONSTRAINT processes_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent-os-1773550873753-b6c4a3e1-users-public".users (id) 
    ON DELETE CASCADE;

