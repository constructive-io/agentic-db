-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-limits-public/tables/org_limits/constraints/org_limits_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-limits-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-limits-public/tables/org_limits/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-limits-public".org_limits 
  ADD CONSTRAINT org_limits_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent-os-1773550873753-b6c4a3e1-users-public".users (id) 
    ON DELETE CASCADE;

