-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/messages/columns/to_addresses/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/messages/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/messages/columns/from_address/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".messages 
  ADD COLUMN to_addresses text[];

