-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/billing_subscriptions/columns/created_at/alterations/alt0000001456


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".billing_subscriptions 
  ALTER COLUMN created_at DROP NOT NULL;


