-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/deals/columns/expected_close_date/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/deals/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/deals/columns/currency/alterations/alt0000000886


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".deals 
  ADD COLUMN expected_close_date timestamptz;

