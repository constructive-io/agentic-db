-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/recipes/columns/created_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/recipes/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/recipes/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".recipes 
  ADD COLUMN created_at timestamptz;

