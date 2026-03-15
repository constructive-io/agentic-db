-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/webhooks/columns/is_active/alterations/alt0000001442




ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".webhooks 
    ALTER COLUMN is_active DROP DEFAULT;



