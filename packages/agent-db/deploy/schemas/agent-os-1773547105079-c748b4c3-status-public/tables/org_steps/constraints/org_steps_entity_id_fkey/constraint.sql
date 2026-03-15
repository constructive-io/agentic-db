-- Deploy: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_steps/constraints/org_steps_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_steps/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".org_steps 
  ADD CONSTRAINT org_steps_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent-os-1773547105079-c748b4c3-users-public".users (id) 
    ON DELETE CASCADE;

