-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/billing_subscriptions/columns/id/alterations/alt0000003014


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".billing_subscriptions 
  ALTER COLUMN id DROP NOT NULL;


