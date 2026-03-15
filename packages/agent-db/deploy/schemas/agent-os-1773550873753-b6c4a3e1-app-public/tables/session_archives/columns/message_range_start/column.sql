-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/session_archives/columns/message_range_start/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/session_archives/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/session_archives/columns/summary/alterations/alt0000001289


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".session_archives 
  ADD COLUMN message_range_start int;

