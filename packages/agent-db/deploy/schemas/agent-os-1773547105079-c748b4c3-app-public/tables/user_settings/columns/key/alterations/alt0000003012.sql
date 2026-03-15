-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/user_settings/columns/key/alterations/alt0000003012
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/user_settings/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/user_settings/columns/key/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/user_settings/columns/updated_at/alterations/alt0000003011


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".user_settings 
  ALTER COLUMN key SET NOT NULL;

