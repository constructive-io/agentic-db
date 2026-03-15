-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/billing_subscriptions/columns/entity_id/alterations/alt0000001455


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".billing_subscriptions 
  ALTER COLUMN entity_id DROP NOT NULL;


