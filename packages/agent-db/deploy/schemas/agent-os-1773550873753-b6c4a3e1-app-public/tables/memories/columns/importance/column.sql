-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/memories/columns/importance/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/memories/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/memories/columns/agent_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".memories 
  ADD COLUMN importance int;

