-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/interactions/columns/occurred_at/alterations/alt0000002488
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/interactions/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/interactions/columns/occurred_at/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/interactions/columns/type/alterations/alt0000002487


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".interactions 
  ALTER COLUMN occurred_at SET NOT NULL;

