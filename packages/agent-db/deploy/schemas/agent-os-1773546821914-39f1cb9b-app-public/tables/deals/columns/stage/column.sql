-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/deals/columns/stage/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/deals/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/deals/columns/name/alterations/alt0000000884


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".deals 
  ADD COLUMN stage text;

