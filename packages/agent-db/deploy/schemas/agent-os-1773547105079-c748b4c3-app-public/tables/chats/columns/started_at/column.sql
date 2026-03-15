-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chats/columns/started_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chats/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chats/columns/title/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".chats 
  ADD COLUMN started_at timestamptz;

