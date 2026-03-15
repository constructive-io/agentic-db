-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/session_archives/columns/summary/alterations/alt0000002898
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/session_archives/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/session_archives/columns/summary/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/session_archives/columns/archive_index/alterations/alt0000002897


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".session_archives 
  ALTER COLUMN summary SET NOT NULL;

