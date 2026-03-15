-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/billing_subscriptions/columns/currency/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".billing_subscriptions 
  DROP COLUMN currency RESTRICT;


