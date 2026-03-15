-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/billing_subscriptions/columns/currency/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/billing_subscriptions/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/billing_subscriptions/columns/amount/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".billing_subscriptions 
  ADD COLUMN currency text;

