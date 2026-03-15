-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/interactions/columns/summary/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/interactions/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/interactions/columns/occurred_at/alterations/alt0000002488


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".interactions 
  ADD COLUMN summary text;

