-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tools/columns/description/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tools/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tools/columns/name/alterations/alt0000002783


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".tools 
  ADD COLUMN description text;

