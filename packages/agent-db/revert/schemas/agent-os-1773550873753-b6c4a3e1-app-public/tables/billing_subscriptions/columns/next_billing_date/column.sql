-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/billing_subscriptions/columns/next_billing_date/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".billing_subscriptions 
  DROP COLUMN next_billing_date RESTRICT;


