-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/deals/columns/expected_close_date/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/deals/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/deals/columns/currency/alterations/alt0000000886


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".deals 
  ADD COLUMN expected_close_date timestamptz;

