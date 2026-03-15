-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/trips/columns/destination/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/trips/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/trips/columns/name/alterations/alt0000003032


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".trips 
  ADD COLUMN destination text;

