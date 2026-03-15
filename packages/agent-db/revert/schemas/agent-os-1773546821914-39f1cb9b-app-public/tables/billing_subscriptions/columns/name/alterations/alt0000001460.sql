-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/billing_subscriptions/columns/name/alterations/alt0000001460


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".billing_subscriptions 
  ALTER COLUMN name DROP NOT NULL;


