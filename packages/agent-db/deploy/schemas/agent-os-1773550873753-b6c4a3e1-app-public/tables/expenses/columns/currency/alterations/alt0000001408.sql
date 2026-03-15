-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/expenses/columns/currency/alterations/alt0000001408
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/expenses/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/expenses/columns/amount/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/expenses/columns/currency/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".expenses 
    ALTER COLUMN currency SET DEFAULT 'USD';

