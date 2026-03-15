-- Deploy: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/org_permission_defaults/constraints/org_permission_defaults_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-permissions-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/org_permission_defaults/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-permissions-public".org_permission_defaults 
  ADD CONSTRAINT org_permission_defaults_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent-os-1773547105079-c748b4c3-users-public".users (id) 
    ON DELETE CASCADE;

