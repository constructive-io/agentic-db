-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/expenses/columns/currency/alterations/alt0000001408
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/expenses/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/expenses/columns/amount/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/expenses/columns/currency/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".expenses 
    ALTER COLUMN currency SET DEFAULT 'USD';

