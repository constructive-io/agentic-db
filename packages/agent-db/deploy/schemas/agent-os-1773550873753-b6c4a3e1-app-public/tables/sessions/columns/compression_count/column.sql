-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/sessions/columns/compression_count/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/sessions/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/sessions/columns/archived_messages/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".sessions 
  ADD COLUMN compression_count int;

