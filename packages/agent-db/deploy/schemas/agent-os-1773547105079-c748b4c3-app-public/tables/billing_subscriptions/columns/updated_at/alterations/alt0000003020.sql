-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/billing_subscriptions/columns/updated_at/alterations/alt0000003020
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/billing_subscriptions/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/billing_subscriptions/columns/updated_at/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/billing_subscriptions/policies/auth_del_entity_membership/policy



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".billing_subscriptions 
    ALTER COLUMN updated_at SET DEFAULT now();

