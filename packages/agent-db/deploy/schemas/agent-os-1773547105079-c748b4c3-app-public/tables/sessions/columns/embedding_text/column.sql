-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/sessions/columns/embedding_text/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/sessions/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/sessions/columns/skills_used/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".sessions 
  ADD COLUMN embedding_text text;

