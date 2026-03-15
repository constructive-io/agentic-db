-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chunks/columns/embedding_text/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chunks/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chunks/columns/end_line/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".chunks 
  ADD COLUMN embedding_text text;

