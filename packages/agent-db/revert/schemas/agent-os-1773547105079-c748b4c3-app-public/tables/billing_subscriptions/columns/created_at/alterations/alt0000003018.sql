-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/billing_subscriptions/columns/created_at/alterations/alt0000003018




ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".billing_subscriptions 
    ALTER COLUMN created_at DROP DEFAULT;



