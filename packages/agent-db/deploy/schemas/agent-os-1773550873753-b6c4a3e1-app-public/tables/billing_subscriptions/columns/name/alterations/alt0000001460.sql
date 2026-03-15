-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/billing_subscriptions/columns/name/alterations/alt0000001460
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/billing_subscriptions/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/billing_subscriptions/columns/name/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/billing_subscriptions/columns/updated_at/alterations/alt0000001459


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".billing_subscriptions 
  ALTER COLUMN name SET NOT NULL;

