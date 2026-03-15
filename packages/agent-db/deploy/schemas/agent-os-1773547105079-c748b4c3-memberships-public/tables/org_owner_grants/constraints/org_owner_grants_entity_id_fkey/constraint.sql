-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_owner_grants/constraints/org_owner_grants_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_owner_grants/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_owner_grants 
  ADD CONSTRAINT org_owner_grants_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent-os-1773547105079-c748b4c3-users-public".users (id) 
    ON DELETE CASCADE;

