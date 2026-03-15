-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/memories/columns/id/alterations/alt0000001063
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/memories/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/memories/columns/id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/rules/columns/trigger_concept/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".memories 
  ALTER COLUMN id SET NOT NULL;

