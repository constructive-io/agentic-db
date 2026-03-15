-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/ideas/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/ideas/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/webhooks/constraints/webhooks_integration_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".ideas 
  ENABLE ROW LEVEL SECURITY;

