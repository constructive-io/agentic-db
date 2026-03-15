-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chats/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chats/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/execution_log/columns/duration_ms/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".chats 
  ENABLE ROW LEVEL SECURITY;

