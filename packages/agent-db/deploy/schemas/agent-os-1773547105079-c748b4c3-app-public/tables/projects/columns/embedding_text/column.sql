-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/projects/columns/embedding_text/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/projects/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/projects/columns/tags/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".projects 
  ADD COLUMN embedding_text text;

