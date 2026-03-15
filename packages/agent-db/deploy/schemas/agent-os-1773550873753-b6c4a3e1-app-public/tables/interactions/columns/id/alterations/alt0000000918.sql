-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/interactions/columns/id/alterations/alt0000000918
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/interactions/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/interactions/columns/id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/notes/columns/embedding/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".interactions 
  ALTER COLUMN id SET NOT NULL;

