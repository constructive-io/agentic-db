-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/blueprints/columns/title/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/blueprints/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/blueprints/columns/updated_at/alterations/alt0000001189


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".blueprints 
  ADD COLUMN title text;

