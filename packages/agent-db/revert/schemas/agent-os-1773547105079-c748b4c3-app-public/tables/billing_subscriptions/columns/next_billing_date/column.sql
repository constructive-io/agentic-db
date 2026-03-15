-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/billing_subscriptions/columns/next_billing_date/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".billing_subscriptions 
  DROP COLUMN next_billing_date RESTRICT;


