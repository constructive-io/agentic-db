-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/messages/columns/from_address/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/messages/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/messages/columns/remote_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".messages 
  ADD COLUMN from_address text;

