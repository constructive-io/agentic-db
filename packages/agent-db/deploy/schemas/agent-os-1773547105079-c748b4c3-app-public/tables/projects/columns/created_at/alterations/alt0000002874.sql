-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/projects/columns/created_at/alterations/alt0000002874
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/projects/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/projects/columns/created_at/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/projects/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".projects 
  ALTER COLUMN created_at SET NOT NULL;

