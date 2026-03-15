-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/billing_subscriptions/columns/created_at/alterations/alt0000001457




ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".billing_subscriptions 
    ALTER COLUMN created_at DROP DEFAULT;



