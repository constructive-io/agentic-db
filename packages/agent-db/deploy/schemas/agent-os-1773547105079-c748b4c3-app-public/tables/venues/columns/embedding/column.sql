-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venues/columns/embedding/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venues/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venues/columns/embedding_text/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".venues 
  ADD COLUMN embedding vector(768);

