-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/user_settings/columns/created_at/alterations/alt0000003008
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/user_settings/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/user_settings/columns/created_at/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/user_settings/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".user_settings 
  ALTER COLUMN created_at SET NOT NULL;

