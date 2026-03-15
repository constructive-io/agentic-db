-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/expenses/columns/currency/alterations/alt0000003017
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/expenses/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/expenses/columns/amount/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/expenses/columns/currency/column



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".expenses 
    ALTER COLUMN currency SET DEFAULT 'USD';

