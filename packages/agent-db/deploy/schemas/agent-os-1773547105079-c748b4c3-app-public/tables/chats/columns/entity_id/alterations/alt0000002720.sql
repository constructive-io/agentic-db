-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chats/columns/entity_id/alterations/alt0000002720
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chats/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chats/columns/entity_id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/execution_log/columns/duration_ms/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".chats 
  ALTER COLUMN entity_id SET NOT NULL;

