-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/session_archives/columns/archive_index/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/session_archives/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/session_archives/columns/session_id/alterations/alt0000002848


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".session_archives 
  ADD COLUMN archive_index int;

