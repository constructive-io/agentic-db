-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/webhooks/columns/updated_at/alterations/alt0000003048




ALTER TABLE "agent-os-1773551593867-bac64076-app-public".webhooks 
    ALTER COLUMN updated_at DROP DEFAULT;



