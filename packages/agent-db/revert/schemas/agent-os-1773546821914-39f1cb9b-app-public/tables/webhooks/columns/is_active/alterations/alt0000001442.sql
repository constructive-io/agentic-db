-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/webhooks/columns/is_active/alterations/alt0000001442




ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".webhooks 
    ALTER COLUMN is_active DROP DEFAULT;



