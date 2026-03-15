-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chunks/columns/start_line/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chunks/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chunks/columns/content/alterations/alt0000002922


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".chunks 
  ADD COLUMN start_line int;

