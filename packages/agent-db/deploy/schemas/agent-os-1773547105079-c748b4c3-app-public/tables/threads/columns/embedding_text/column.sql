-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/threads/columns/embedding_text/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/threads/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/threads/columns/parent_thread_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".threads 
  ADD COLUMN embedding_text text;

