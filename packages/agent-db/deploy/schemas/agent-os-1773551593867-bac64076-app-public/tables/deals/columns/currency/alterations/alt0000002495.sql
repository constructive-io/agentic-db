-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/deals/columns/currency/alterations/alt0000002495
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/deals/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/deals/columns/value/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/deals/columns/currency/column



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".deals 
    ALTER COLUMN currency SET DEFAULT 'USD';

