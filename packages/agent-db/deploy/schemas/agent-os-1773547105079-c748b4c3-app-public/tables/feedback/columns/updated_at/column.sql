-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/feedback/columns/updated_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/feedback/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/feedback/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".feedback 
  ADD COLUMN updated_at timestamptz;

