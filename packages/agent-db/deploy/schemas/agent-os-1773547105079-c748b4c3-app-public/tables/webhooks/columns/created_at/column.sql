-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/webhooks/columns/created_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/webhooks/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/webhooks/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".webhooks 
  ADD COLUMN created_at timestamptz;

