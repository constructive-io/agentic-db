-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/billing_subscriptions/columns/entity_id/alterations/alt0000003064


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".billing_subscriptions 
  ALTER COLUMN entity_id DROP NOT NULL;


