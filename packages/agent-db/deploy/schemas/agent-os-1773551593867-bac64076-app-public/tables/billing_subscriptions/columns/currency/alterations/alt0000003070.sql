-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/billing_subscriptions/columns/currency/alterations/alt0000003070
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/billing_subscriptions/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/billing_subscriptions/columns/amount/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/billing_subscriptions/columns/currency/column



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".billing_subscriptions 
    ALTER COLUMN currency SET DEFAULT 'USD';

