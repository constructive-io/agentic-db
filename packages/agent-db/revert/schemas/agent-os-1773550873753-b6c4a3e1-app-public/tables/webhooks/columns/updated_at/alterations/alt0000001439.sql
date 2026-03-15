-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/webhooks/columns/updated_at/alterations/alt0000001439




ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".webhooks 
    ALTER COLUMN updated_at DROP DEFAULT;



