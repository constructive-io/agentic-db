-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/billing_subscriptions/columns/cancellation_date/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/billing_subscriptions/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/billing_subscriptions/columns/next_billing_date/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".billing_subscriptions 
  ADD COLUMN cancellation_date date;

