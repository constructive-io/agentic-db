-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/billing_subscriptions/columns/next_billing_date/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/billing_subscriptions/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/billing_subscriptions/columns/provider/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".billing_subscriptions 
  ADD COLUMN next_billing_date date;

