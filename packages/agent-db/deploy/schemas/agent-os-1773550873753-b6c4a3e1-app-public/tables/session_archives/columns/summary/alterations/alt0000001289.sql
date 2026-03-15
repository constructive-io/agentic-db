-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/session_archives/columns/summary/alterations/alt0000001289
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/session_archives/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/session_archives/columns/summary/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/session_archives/columns/archive_index/alterations/alt0000001288


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".session_archives 
  ALTER COLUMN summary SET NOT NULL;

