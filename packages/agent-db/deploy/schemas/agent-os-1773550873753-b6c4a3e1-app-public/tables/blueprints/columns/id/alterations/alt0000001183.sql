-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/blueprints/columns/id/alterations/alt0000001183
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/blueprints/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/blueprints/columns/id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/threads/columns/embedding/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".blueprints 
  ALTER COLUMN id SET NOT NULL;

