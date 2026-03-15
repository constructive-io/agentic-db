-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/scheduled_jobs/columns/is_active/alterations/alt0000002820




ALTER TABLE "agent-os-1773551593867-bac64076-app-public".scheduled_jobs 
    ALTER COLUMN is_active DROP DEFAULT;



