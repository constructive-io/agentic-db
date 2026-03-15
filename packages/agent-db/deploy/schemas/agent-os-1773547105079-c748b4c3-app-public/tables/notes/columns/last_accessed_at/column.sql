-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notes/columns/last_accessed_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notes/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notes/columns/active_count/alterations/alt0000002477


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".notes 
  ADD COLUMN last_accessed_at timestamptz;

