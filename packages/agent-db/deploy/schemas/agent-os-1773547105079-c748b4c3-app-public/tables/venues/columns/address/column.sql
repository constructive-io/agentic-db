-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venues/columns/address/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venues/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venues/columns/name/alterations/alt0000002465


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".venues 
  ADD COLUMN address text;

