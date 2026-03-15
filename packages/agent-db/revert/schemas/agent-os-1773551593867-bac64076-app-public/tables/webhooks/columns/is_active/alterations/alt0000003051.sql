-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/webhooks/columns/is_active/alterations/alt0000003051




ALTER TABLE "agent-os-1773551593867-bac64076-app-public".webhooks 
    ALTER COLUMN is_active DROP DEFAULT;



