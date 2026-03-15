-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/session_archives/columns/message_range_end/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/session_archives/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/session_archives/columns/message_range_start/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".session_archives 
  ADD COLUMN message_range_end int;

