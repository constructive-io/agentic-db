-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/list_items/columns/created_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/list_items/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/list_items/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".list_items 
  ADD COLUMN created_at timestamptz;

