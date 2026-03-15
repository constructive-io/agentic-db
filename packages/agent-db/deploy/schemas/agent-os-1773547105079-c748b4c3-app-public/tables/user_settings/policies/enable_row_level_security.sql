-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/user_settings/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/user_settings/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/webhooks/columns/is_active/alterations/alt0000003003


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".user_settings 
  ENABLE ROW LEVEL SECURITY;

