-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/interactions/columns/summary/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/interactions/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/interactions/columns/occurred_at/alterations/alt0000000927


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".interactions 
  ADD COLUMN summary text;

