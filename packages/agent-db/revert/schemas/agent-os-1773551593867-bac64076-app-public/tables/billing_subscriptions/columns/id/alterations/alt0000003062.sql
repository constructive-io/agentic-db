-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/billing_subscriptions/columns/id/alterations/alt0000003062


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".billing_subscriptions 
  ALTER COLUMN id DROP NOT NULL;


