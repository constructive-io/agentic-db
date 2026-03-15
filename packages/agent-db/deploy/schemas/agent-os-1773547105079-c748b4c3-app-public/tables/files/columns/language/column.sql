-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/files/columns/language/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/files/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/files/columns/path/alterations/alt0000002913


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".files 
  ADD COLUMN language text;

