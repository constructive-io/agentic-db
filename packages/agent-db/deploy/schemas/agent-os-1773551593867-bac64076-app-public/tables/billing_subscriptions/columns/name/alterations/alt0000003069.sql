-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/billing_subscriptions/columns/name/alterations/alt0000003069
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/billing_subscriptions/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/billing_subscriptions/columns/name/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/billing_subscriptions/columns/updated_at/alterations/alt0000003068


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".billing_subscriptions 
  ALTER COLUMN name SET NOT NULL;

