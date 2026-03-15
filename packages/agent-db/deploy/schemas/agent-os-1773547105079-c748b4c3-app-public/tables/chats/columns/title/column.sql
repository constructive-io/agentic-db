-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chats/columns/title/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chats/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chats/columns/updated_at/alterations/alt0000002724


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".chats 
  ADD COLUMN title text;

