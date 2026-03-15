-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/billing_subscriptions/columns/updated_at/alterations/alt0000003067


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".billing_subscriptions 
  ALTER COLUMN updated_at DROP NOT NULL;


