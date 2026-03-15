-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/images/columns/created_at/alterations/alt0000002414
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/images/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/images/columns/created_at/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/images/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".images 
  ALTER COLUMN created_at SET NOT NULL;

