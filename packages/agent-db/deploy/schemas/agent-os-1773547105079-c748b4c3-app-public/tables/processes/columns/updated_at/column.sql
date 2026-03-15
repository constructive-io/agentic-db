-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/processes/columns/updated_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/processes/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/processes/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".processes 
  ADD COLUMN updated_at timestamptz;

