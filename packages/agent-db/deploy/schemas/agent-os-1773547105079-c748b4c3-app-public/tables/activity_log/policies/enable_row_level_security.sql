-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/activity_log/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/activity_log/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/session_archives/columns/embedding/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".activity_log 
  ENABLE ROW LEVEL SECURITY;

