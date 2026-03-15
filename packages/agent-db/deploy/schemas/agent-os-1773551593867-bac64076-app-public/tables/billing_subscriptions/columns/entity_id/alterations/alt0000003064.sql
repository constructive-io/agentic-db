-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/billing_subscriptions/columns/entity_id/alterations/alt0000003064
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/billing_subscriptions/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/user_settings/columns/category/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/billing_subscriptions/columns/entity_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".billing_subscriptions 
  ALTER COLUMN entity_id SET NOT NULL;

