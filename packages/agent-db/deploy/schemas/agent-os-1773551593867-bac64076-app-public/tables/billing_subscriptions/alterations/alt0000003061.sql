-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/billing_subscriptions/alterations/alt0000003061
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/billing_subscriptions/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/user_settings/columns/category/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".billing_subscriptions 
  DISABLE ROW LEVEL SECURITY;

