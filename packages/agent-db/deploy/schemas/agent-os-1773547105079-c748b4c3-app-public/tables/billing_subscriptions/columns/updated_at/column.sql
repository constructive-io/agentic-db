-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/billing_subscriptions/columns/updated_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/billing_subscriptions/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/billing_subscriptions/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".billing_subscriptions 
  ADD COLUMN updated_at timestamptz;

