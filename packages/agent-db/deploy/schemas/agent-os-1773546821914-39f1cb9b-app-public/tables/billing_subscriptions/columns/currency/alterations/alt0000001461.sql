-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/billing_subscriptions/columns/currency/alterations/alt0000001461
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/billing_subscriptions/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/billing_subscriptions/columns/amount/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/billing_subscriptions/columns/currency/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".billing_subscriptions 
    ALTER COLUMN currency SET DEFAULT 'USD';

