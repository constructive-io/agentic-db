-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/deals/columns/value/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/deals/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/deals/columns/stage/alterations/alt0000000885


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".deals 
  ADD COLUMN value numeric;

