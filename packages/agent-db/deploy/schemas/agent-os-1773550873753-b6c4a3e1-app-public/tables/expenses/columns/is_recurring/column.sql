-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/expenses/columns/is_recurring/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/expenses/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/expenses/columns/receipt_url/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".expenses 
  ADD COLUMN is_recurring bool;

