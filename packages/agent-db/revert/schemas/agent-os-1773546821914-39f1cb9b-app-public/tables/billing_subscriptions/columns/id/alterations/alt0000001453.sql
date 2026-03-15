-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/billing_subscriptions/columns/id/alterations/alt0000001453


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".billing_subscriptions 
  ALTER COLUMN id DROP NOT NULL;


