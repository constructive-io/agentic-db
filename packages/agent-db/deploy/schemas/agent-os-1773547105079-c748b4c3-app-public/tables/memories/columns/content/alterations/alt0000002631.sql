-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/memories/columns/content/alterations/alt0000002631
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/memories/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/memories/columns/content/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/memories/columns/updated_at/alterations/alt0000002630


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".memories 
  ALTER COLUMN content SET NOT NULL;

