-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/billing_subscriptions/columns/amount/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/billing_subscriptions/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/billing_subscriptions/columns/name/alterations/alt0000001460


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".billing_subscriptions 
  ADD COLUMN amount numeric;

