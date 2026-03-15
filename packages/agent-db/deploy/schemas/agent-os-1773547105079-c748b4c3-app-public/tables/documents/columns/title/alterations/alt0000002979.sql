-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/documents/columns/title/alterations/alt0000002979
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/documents/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/documents/columns/title/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/documents/columns/updated_at/alterations/alt0000002978


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".documents 
  ALTER COLUMN title SET NOT NULL;

