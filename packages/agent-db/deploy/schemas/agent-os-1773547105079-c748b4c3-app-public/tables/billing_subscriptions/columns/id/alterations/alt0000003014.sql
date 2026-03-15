-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/billing_subscriptions/columns/id/alterations/alt0000003014
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/billing_subscriptions/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/user_settings/columns/category/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/billing_subscriptions/columns/id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".billing_subscriptions 
  ALTER COLUMN id SET NOT NULL;

