-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/memories/columns/last_accessed_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/memories/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/memories/columns/active_count/alterations/alt0000001072


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".memories 
  ADD COLUMN last_accessed_at timestamptz;

