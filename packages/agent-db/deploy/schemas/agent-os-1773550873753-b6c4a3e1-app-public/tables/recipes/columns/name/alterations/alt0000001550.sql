-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/recipes/columns/name/alterations/alt0000001550
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/recipes/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/recipes/columns/name/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/recipes/columns/updated_at/alterations/alt0000001549


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".recipes 
  ALTER COLUMN name SET NOT NULL;

