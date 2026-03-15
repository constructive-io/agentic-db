-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/repositories/constraints/repositories_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/repositories/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/project_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".repositories 
  ADD CONSTRAINT repositories_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent-os-1773547105079-c748b4c3-users-public".users (id) 
    ON DELETE CASCADE;

