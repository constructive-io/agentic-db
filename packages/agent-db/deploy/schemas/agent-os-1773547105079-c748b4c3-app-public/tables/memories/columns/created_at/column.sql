-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/memories/columns/created_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/memories/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/memories/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".memories 
  ADD COLUMN created_at timestamptz;

