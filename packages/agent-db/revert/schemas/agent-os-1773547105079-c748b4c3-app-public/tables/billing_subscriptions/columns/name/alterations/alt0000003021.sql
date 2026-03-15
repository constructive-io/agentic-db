-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/billing_subscriptions/columns/name/alterations/alt0000003021


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".billing_subscriptions 
  ALTER COLUMN name DROP NOT NULL;


