-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/repositories/columns/tags/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/repositories/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/repositories/columns/last_synced_at/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".repositories 
  ADD COLUMN tags citext[];

