-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/documents/columns/last_accessed_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/documents/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/documents/columns/active_count/alterations/alt0000002981


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".documents 
  ADD COLUMN last_accessed_at timestamptz;

