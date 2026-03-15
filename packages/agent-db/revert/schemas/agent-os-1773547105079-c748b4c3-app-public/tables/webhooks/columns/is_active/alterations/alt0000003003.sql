-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/webhooks/columns/is_active/alterations/alt0000003003




ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".webhooks 
    ALTER COLUMN is_active DROP DEFAULT;



