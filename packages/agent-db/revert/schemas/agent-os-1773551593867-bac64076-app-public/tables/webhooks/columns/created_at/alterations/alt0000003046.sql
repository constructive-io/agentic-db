-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/webhooks/columns/created_at/alterations/alt0000003046




ALTER TABLE "agent-os-1773551593867-bac64076-app-public".webhooks 
    ALTER COLUMN created_at DROP DEFAULT;



