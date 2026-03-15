-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chunks/columns/content/alterations/alt0000002922
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chunks/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chunks/columns/content/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chunks/columns/repository_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".chunks 
  ALTER COLUMN content SET NOT NULL;

