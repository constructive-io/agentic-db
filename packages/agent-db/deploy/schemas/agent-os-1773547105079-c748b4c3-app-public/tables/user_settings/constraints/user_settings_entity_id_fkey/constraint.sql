-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/user_settings/constraints/user_settings_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/user_settings/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/webhooks/columns/is_active/alterations/alt0000003003


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".user_settings 
  ADD CONSTRAINT user_settings_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent-os-1773547105079-c748b4c3-users-public".users (id) 
    ON DELETE CASCADE;

