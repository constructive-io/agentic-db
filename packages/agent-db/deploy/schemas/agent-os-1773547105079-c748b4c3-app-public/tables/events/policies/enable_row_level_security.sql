-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/events/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/events/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/deals/columns/embedding/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".events 
  ENABLE ROW LEVEL SECURITY;

