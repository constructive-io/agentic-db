-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/documents/columns/title/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/documents/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/documents/columns/updated_at/alterations/alt0000002978


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".documents 
  ADD COLUMN title text;

