-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/webhooks/columns/created_at/alterations/alt0000001437




ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".webhooks 
    ALTER COLUMN created_at DROP DEFAULT;



