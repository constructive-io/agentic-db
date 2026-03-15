-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/recipes/columns/description/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/recipes/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/recipes/columns/name/alterations/alt0000001550


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".recipes 
  ADD COLUMN description text;

