-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/session_archives/columns/summary/alterations/alt0000001289
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/session_archives/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/session_archives/columns/summary/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/session_archives/columns/archive_index/alterations/alt0000001288


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".session_archives 
  ALTER COLUMN summary SET NOT NULL;

